/// The endpoint type.
enum EndpointType {
  valueAzureVM("AzureVM"),
  valueAzureVNet("AzureVNet"),
  valueAzureSubnet("AzureSubnet"),
  valueExternalAddress("ExternalAddress"),
  valueMMAWorkspaceMachine("MMAWorkspaceMachine"),
  valueMMAWorkspaceNetwork("MMAWorkspaceNetwork"),
  valueAzureArcVM("AzureArcVM"),
  valueAzureVMSS("AzureVMSS"),
  valueAzureArcNetwork("AzureArcNetwork");

  const EndpointType(this.value);
  final String value;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}

