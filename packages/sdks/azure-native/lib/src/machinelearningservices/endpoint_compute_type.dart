import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The compute type of the endpoint.
enum EndpointComputeType implements pulumi.PulumiEnum<String> {
  managed("Managed"),
  kubernetes("Kubernetes"),
  azureMLCompute("AzureMLCompute");

  const EndpointComputeType(this.wireValue);
  @override
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
