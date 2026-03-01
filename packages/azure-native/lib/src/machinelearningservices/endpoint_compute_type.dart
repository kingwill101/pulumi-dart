/// [Required] The compute type of the endpoint.
enum EndpointComputeType {
  valueManaged("Managed"),
  valueKubernetes("Kubernetes"),
  valueAzureMLCompute("AzureMLCompute");

  const EndpointComputeType(this.value);
  final String value;

  static EndpointComputeType fromValue(String value) {
    for (final item in EndpointComputeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointComputeType value: $value');
  }
}

