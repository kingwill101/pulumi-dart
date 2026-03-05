import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/containerinstance.dart'
    as containerinstance;
import 'package:pulumi_azure_native/resources.dart' as resources;

class AzureNativeAciStack extends pulumi.Stack {
  AzureNativeAciStack() : super() {
    final config = pulumi.Config();
    final location = config.get('location') ?? 'westus2';

    final resourceGroup = resources.ResourceGroup(
      'aci-ts-rg',
      args: resources.ResourceGroupArgs(location: location.output()),
    );

    final containerGroup = containerinstance.ContainerGroup(
      'containerGroup',
      args: containerinstance.ContainerGroupArgs(
        resourceGroupName: resourceGroup.name,
        location: resourceGroup.location,
        containerGroupName: 'containerGroup'.output(),
        osType: 'Linux'.output(),
        containers: [
          containerinstance.Container(
            name: 'acilinuxpublicipcontainergroup'.output(),
            image: 'mcr.microsoft.com/azuredocs/aci-helloworld'.output(),
            ports: [
              containerinstance.ContainerPort(port: 80.output()),
            ].output(),
            resources: containerinstance.ResourceRequirements(
              requests: containerinstance.ResourceRequests(
                cpu: 1.0.output(),
                memoryInGB: 1.5.output(),
              ).output(),
            ).output(),
          ),
        ].output(),
        ipAddress: containerinstance.IpAddress(
          ports: [
            containerinstance.Port(port: 80.output(), protocol: 'Tcp'.output()),
          ].output(),
          type: 'Public'.output(),
        ).output(),
        restartPolicy: 'Always'.output(),
      ),
    );

    final containerIPv4Address = containerGroup.ipAddress.apply((ip) => ip?.ip);
    registerOutputs({'containerIPv4Address': containerIPv4Address});
  }
}
