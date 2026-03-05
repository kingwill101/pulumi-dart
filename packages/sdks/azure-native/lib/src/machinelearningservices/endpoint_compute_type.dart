/// [Required] The compute type of the endpoint.
enum EndpointComputeType {
  valueManaged("Managed"),
  valueKubernetes("Kubernetes"),
  valueAzureMLCompute("AzureMLCompute");

  const EndpointComputeType(this.wireValue);
  final String wireValue;

  static EndpointComputeType fromValue(String value) {
    for (final item in EndpointComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointComputeType value: $value');
  }
}

