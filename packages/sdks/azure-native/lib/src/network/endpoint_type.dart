import 'package:pulumi/pulumi.dart' as pulumi;

/// The endpoint type.
enum EndpointType implements pulumi.PulumiEnum<String> {
  valueAzureVM("AzureVM"),
  valueAzureVNet("AzureVNet"),
  valueAzureSubnet("AzureSubnet"),
  valueExternalAddress("ExternalAddress"),
  valueMMAWorkspaceMachine("MMAWorkspaceMachine"),
  valueMMAWorkspaceNetwork("MMAWorkspaceNetwork"),
  valueAzureArcVM("AzureArcVM"),
  valueAzureVMSS("AzureVMSS"),
  valueAzureArcNetwork("AzureArcNetwork");

  const EndpointType(this.wireValue);
  @override
  final String wireValue;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}
