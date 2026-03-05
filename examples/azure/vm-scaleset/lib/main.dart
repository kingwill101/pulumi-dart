import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/pulumi_azure.dart' as azure;
import 'package:pulumi_random/pulumi_random.dart' as random;

class AzureVmScaleSetStack extends pulumi.Stack {
  late final pulumi.Output<String> publicAddress;

  AzureVmScaleSetStack() : super() {
    final config = pulumi.Config();
    final azureConfig = pulumi.Config('azure');

    final location = azureConfig.get('location') ?? 'westus';
    final adminUser = config.get('adminUser') ?? 'azureuser';
    final configuredAdminPassword = config.get('adminPassword');
    final configuredDomain = config.get('domain');
    final applicationPort = (config.getNumber('applicationPort') ?? 80).toInt();

    final adminPassword = configuredAdminPassword != null
        ? configuredAdminPassword.output()
        : random.index
              .RandomPassword(
                'pwd',
                args: random.index.RandomPasswordArgs(
                  length: 20.output(),
                  special: true.output(),
                ),
              )
              .result;

    final domain = configuredDomain != null
        ? configuredDomain.output()
        : random.index
              .RandomString(
                'domain',
                args: random.index.RandomStringArgs(
                  length: 10.output(),
                  number: false.output(),
                  special: false.output(),
                  upper: false.output(),
                ),
              )
              .result;

    final resourceGroup = azure.core.ResourceGroup(
      'vmss-rg',
      args: azure.core.ResourceGroupArgs(location: location.output()),
    );

    final publicIp = azure.network.PublicIp(
      'public-ip',
      args: azure.network.PublicIpArgs(
        resourceGroupName: resourceGroup.name,
        allocationMethod: 'Static'.output(),
        domainNameLabel: domain,
      ),
    );

    final loadBalancer = azure.lb.LoadBalancer(
      'lb',
      args: azure.lb.LoadBalancerArgs(
        resourceGroupName: resourceGroup.name,
        frontendIpConfigurations: [
          azure.lb.LoadBalancerFrontendIpConfiguration(
            name: 'PublicIPAddress'.output(),
            publicIpAddressId: publicIp.id,
          ),
        ].output(),
      ),
    );

    final bpepool = azure.lb.BackendAddressPool(
      'bpepool',
      args: azure.lb.BackendAddressPoolArgs(loadbalancerId: loadBalancer.id),
    );

    final sshProbe = azure.lb.Probe(
      'ssh-probe',
      args: azure.lb.ProbeArgs(
        loadbalancerId: loadBalancer.id,
        port: applicationPort.output(),
      ),
    );

    azure.lb.Rule(
      'lbnatrule-http',
      args: azure.lb.RuleArgs(
        backendAddressPoolIds: bpepool.id.apply((id) => [id]),
        backendPort: applicationPort.output(),
        frontendIpConfigurationName: 'PublicIPAddress'.output(),
        frontendPort: applicationPort.output(),
        loadbalancerId: loadBalancer.id,
        probeId: sshProbe.id,
        protocol: 'Tcp'.output(),
      ),
    );

    final vnet = azure.network.VirtualNetwork(
      'vnet',
      args: azure.network.VirtualNetworkArgs(
        resourceGroupName: resourceGroup.name,
        addressSpaces: ['10.0.0.0/16'].output(),
      ),
    );

    final subnet = azure.network.Subnet(
      'subnet',
      args: azure.network.SubnetArgs(
        privateLinkServiceNetworkPoliciesEnabled: false.output(),
        resourceGroupName: resourceGroup.name,
        addressPrefixes: ['10.0.2.0/24'].output(),
        virtualNetworkName: vnet.name,
      ),
    );

    final scaleSet = azure.compute.LinuxVirtualMachineScaleSet(
      'vmscaleset',
      args: azure.compute.LinuxVirtualMachineScaleSetArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        networkInterfaces: [
          azure.compute.LinuxVirtualMachineScaleSetNetworkInterface(
            ipConfigurations: [
              azure.compute
                  .LinuxVirtualMachineScaleSetNetworkInterfaceIpConfiguration(
                    loadBalancerBackendAddressPoolIds: bpepool.id.apply(
                      (id) => [id],
                    ),
                    name: 'IPConfiguration'.output(),
                    primary: true.output(),
                    subnetId: subnet.id,
                  ),
            ].output(),
            name: 'networkprofile'.output(),
            primary: true.output(),
          ),
        ].output(),
        adminUsername: adminUser.output(),
        adminPassword: adminPassword,
        computerNamePrefix: 'vmlab'.output(),
        customData: base64Encode(
          utf8.encode('''#cloud-config
packages:
    - nginx'''),
        ).output(),
        disablePasswordAuthentication: false.output(),
        sku: 'Standard_DS1_v2'.output(),
        dataDisks: [
          azure.compute.LinuxVirtualMachineScaleSetDataDisk(
            storageAccountType: 'Standard_LRS'.output(),
            caching: 'ReadWrite'.output(),
            createOption: 'Empty'.output(),
            diskSizeGb: 10.output(),
            lun: 0.output(),
          ),
        ].output(),
        sourceImageReference: azure.compute
            .LinuxVirtualMachineScaleSetSourceImageReference(
              offer: 'UbuntuServer'.output(),
              publisher: 'Canonical'.output(),
              sku: '16.04-LTS'.output(),
              version: 'latest'.output(),
            )
            .output(),
        osDisk: azure.compute
            .LinuxVirtualMachineScaleSetOsDisk(
              caching: 'ReadWrite'.output(),
              storageAccountType: 'Standard_LRS'.output(),
            )
            .output(),
        upgradeMode: 'Manual'.output(),
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [bpepool]),
    );

    azure.monitoring.AutoscaleSetting(
      'vmss-autoscale',
      args: azure.monitoring.AutoscaleSettingArgs(
        resourceGroupName: resourceGroup.name,
        profiles: [
          azure.monitoring.AutoscaleSettingProfile(
            capacity: azure.monitoring
                .AutoscaleSettingProfileCapacity(
                  default_: 1.output(),
                  maximum: 10.output(),
                  minimum: 1.output(),
                )
                .output(),
            name: 'defaultProfile'.output(),
            rules: [
              azure.monitoring.AutoscaleSettingProfileRule(
                metricTrigger: azure.monitoring
                    .AutoscaleSettingProfileRuleMetricTrigger(
                      metricName: 'Percentage CPU'.output(),
                      metricResourceId: scaleSet.id,
                      operator: 'GreaterThan'.output(),
                      statistic: 'Average'.output(),
                      threshold: 75.0.output(),
                      timeAggregation: 'Average'.output(),
                      timeGrain: 'PT1M'.output(),
                      timeWindow: 'PT5M'.output(),
                    )
                    .output(),
                scaleAction: azure.monitoring
                    .AutoscaleSettingProfileRuleScaleAction(
                      cooldown: 'PT1M'.output(),
                      direction: 'Increase'.output(),
                      type: 'ChangeCount'.output(),
                      value: 1.output(),
                    )
                    .output(),
              ),
              azure.monitoring.AutoscaleSettingProfileRule(
                metricTrigger: azure.monitoring
                    .AutoscaleSettingProfileRuleMetricTrigger(
                      metricName: 'Percentage CPU'.output(),
                      metricResourceId: scaleSet.id,
                      operator: 'LessThan'.output(),
                      statistic: 'Average'.output(),
                      threshold: 25.0.output(),
                      timeAggregation: 'Average'.output(),
                      timeGrain: 'PT1M'.output(),
                      timeWindow: 'PT5M'.output(),
                    )
                    .output(),
                scaleAction: azure.monitoring
                    .AutoscaleSettingProfileRuleScaleAction(
                      cooldown: 'PT1M'.output(),
                      direction: 'Decrease'.output(),
                      type: 'ChangeCount'.output(),
                      value: 1.output(),
                    )
                    .output(),
              ),
            ].output(),
          ),
        ].output(),
        targetResourceId: scaleSet.id,
      ),
    );

    publicAddress = publicIp.fqdn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('publicAddress', publicAddress)];
  }
}
