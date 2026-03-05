import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/network.dart' as network;
import 'package:pulumi_azure_native/privatedns.dart' as privatedns;
import 'package:pulumi_azure_native/resources.dart' as resources;
import 'package:pulumi_azure_native/web.dart' as web;

class AzureNativeWebAppPrivateEndpointVnetInjectionStack extends pulumi.Stack {
  AzureNativeWebAppPrivateEndpointVnetInjectionStack() : super() {
    final config = pulumi.Config();

    final resourceGroup = resources.ResourceGroup('resourcegroup');

    final serverfarm = web.AppServicePlan(
      'appServerFarm',
      args: web.AppServicePlanArgs(
        kind: 'app'.output(),
        resourceGroupName: resourceGroup.name,
        sku: web.SkuDescription(
          capacity: 1.output(),
          family: 'P1v2'.output(),
          name: 'P1v2'.output(),
          size: 'P1v2'.output(),
          tier: 'PremiumV2'.output(),
        ).output(),
      ),
    );

    final backendApp = web.WebApp(
      'backendApp',
      args: web.WebAppArgs(
        kind: 'app'.output(),
        resourceGroupName: resourceGroup.name,
        serverFarmId: serverfarm.id,
      ),
    );

    final frontendApp = web.WebApp(
      'frontendApp',
      args: web.WebAppArgs(
        kind: 'app'.output(),
        resourceGroupName: resourceGroup.name,
        serverFarmId: serverfarm.id,
      ),
    );

    final virtualNetworkCIDR =
        config.get('virtualNetworkCIDR') ?? '10.200.0.0/16';
    final virtualNetwork = network.VirtualNetworkNetwork(
      'virtualNetwork',
      args: network.VirtualNetworkArgs(
        addressSpace: network.AddressSpace(
          addressPrefixes: [virtualNetworkCIDR].output(),
        ).output(),
        resourceGroupName: resourceGroup.name,
        virtualNetworkName: 'vnet'.output(),
      ),
      options: pulumi.CustomResourceOptions(ignoreChanges: ['subnets']),
    );

    final privateDnsZone = privatedns.PrivateZone(
      'privateDnsZone',
      args: privatedns.PrivateZoneArgs(
        location: 'global'.output(),
        privateZoneName: 'privatelink.azurewebsites.net'.output(),
        resourceGroupName: resourceGroup.name,
      ),
      options: pulumi.CustomResourceOptions(dependsOn: [virtualNetwork]),
    );

    final backendCIDR = config.get('backendCIDR') ?? '10.200.1.0/24';
    final backendSubnet = network.SubnetNetwork(
      'subnetForBackend',
      args: network.SubnetArgs(
        addressPrefix: backendCIDR.output(),
        privateEndpointNetworkPolicies: network
            .VirtualNetworkPrivateEndpointNetworkPolicies
            .valueDisabled
            .wireValue
            .output(),
        resourceGroupName: resourceGroup.name,
        subnetName: 'subnetForBackend'.output(),
        virtualNetworkName: virtualNetwork.name,
      ),
    );

    final privateEndpoint = network.PrivateEndpoint(
      'privateEndpointForBackend',
      args: network.PrivateEndpointArgs(
        privateLinkServiceConnections: [
          network.PrivateLinkServiceConnection(
            groupIds: ['sites'].output(),
            name: 'privateEndpointLink1'.output(),
            privateLinkServiceId: backendApp.id,
          ),
        ].output(),
        resourceGroupName: resourceGroup.name,
        subnet: backendSubnet.output(),
      ),
    );

    final privateDnsZoneGroup = network.PrivateDnsZoneGroup(
      'privateDnsZoneGroup',
      args: network.PrivateDnsZoneGroupArgs(
        privateDnsZoneConfigs: [
          network.PrivateDnsZoneConfig(
            name: 'config1'.output(),
            privateDnsZoneId: privateDnsZone.id,
          ),
        ].output(),
        privateDnsZoneGroupName: privateEndpoint.name,
        privateEndpointName: privateEndpoint.name,
        resourceGroupName: resourceGroup.name,
      ),
    );

    privatedns.VirtualNetworkLink(
      'virtualNetworkLink',
      args: privatedns.VirtualNetworkLinkArgs(
        location: 'global'.output(),
        privateZoneName: privateDnsZone.name,
        registrationEnabled: false.output(),
        resourceGroupName: resourceGroup.name,
        virtualNetwork: privatedns.SubResource(id: virtualNetwork.id).output(),
      ),
    );

    final frontendCIDR = config.get('frontendCIDR') ?? '10.200.2.0/24';
    final frontendSubnet = network.SubnetNetwork(
      'frontendSubnet',
      args: network.SubnetArgs(
        addressPrefix: frontendCIDR.output(),
        delegations: [
          network.Delegation(
            name: 'delegation'.output(),
            serviceName: 'Microsoft.Web/serverfarms'.output(),
          ),
        ].output(),
        privateEndpointNetworkPolicies: network
            .VirtualNetworkPrivateEndpointNetworkPolicies
            .valueEnabled
            .wireValue
            .output(),
        resourceGroupName: resourceGroup.name,
        subnetName: 'frontendSubnet'.output(),
        virtualNetworkName: virtualNetwork.name,
      ),
    );

    web.WebAppSwiftVirtualNetworkConnection(
      'virtualNetworkConnForFrontend',
      args: web.WebAppSwiftVirtualNetworkConnectionArgs(
        name: frontendApp.name,
        resourceGroupName: resourceGroup.name,
        subnetResourceId: frontendSubnet.id,
      ),
    );

    final privateEndpointURL = privateDnsZoneGroup.privateDnsZoneConfigs
        .apply<String?>((zoneConfigs) {
          if (zoneConfigs == null || zoneConfigs.isEmpty) {
            return null;
          }

          final firstZoneConfig = zoneConfigs.first;
          final recordSets = firstZoneConfig['recordSets'];
          if (recordSets is! List || recordSets.isEmpty) {
            return null;
          }

          final firstRecordSet = recordSets.first;
          if (firstRecordSet is! Map) {
            return null;
          }

          final fqdn = firstRecordSet['fqdn'];
          if (fqdn is! String || fqdn.isEmpty) {
            return null;
          }

          return fqdn;
        });

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'backendURL': backendApp.defaultHostName,
      'frontEndURL': frontendApp.defaultHostName,
      'privateEndpointURL': privateEndpointURL,
    });
  }
}
