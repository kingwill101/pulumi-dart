/// [Required] The authentication method for invoking the endpoint (data plane operation). Use 'Key' for key-based authentication. Use 'AMLToken' for Azure Machine Learning token-based authentication. Use 'AADToken' for Microsoft Entra token-based authentication.
enum EndpointAuthMode {
  valueAMLToken("AMLToken"),
  valueKey("Key"),
  valueAADToken("AADToken");

  const EndpointAuthMode(this.wireValue);
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

