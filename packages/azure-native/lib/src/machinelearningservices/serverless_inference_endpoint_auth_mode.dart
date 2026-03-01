/// [Required] Specifies the authentication mode for the Serverless endpoint.
enum ServerlessInferenceEndpointAuthMode {
  valueKey("Key");

  const ServerlessInferenceEndpointAuthMode(this.value);
  final String value;

  static ServerlessInferenceEndpointAuthMode fromValue(String value) {
    for (final item in ServerlessInferenceEndpointAuthMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerlessInferenceEndpointAuthMode value: $value');
  }
}

