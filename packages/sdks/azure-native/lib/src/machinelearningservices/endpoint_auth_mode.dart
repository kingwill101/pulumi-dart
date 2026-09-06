import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
enum EndpointAuthMode implements pulumi.PulumiEnum<String> {
  aMLToken("AMLToken"),
  key("Key"),
  aADToken("AADToken");

  const EndpointAuthMode(this.wireValue);
  @override
  final String wireValue;

  static EndpointAuthMode fromValue(String value) {
    for (final item in EndpointAuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointAuthMode value: $value');
  }
}
