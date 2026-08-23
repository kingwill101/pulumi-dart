/// [Required] Specifies the authentication mode for the Serverless endpoint.
enum ServerlessInferenceEndpointAuthMode {
  key("Key"),
  aAD("AAD"),
  keyAndAAD("KeyAndAAD");

  const ServerlessInferenceEndpointAuthMode(this.wireValue);
  final String wireValue;

  static ServerlessInferenceEndpointAuthMode fromValue(String value) {
    for (final item in ServerlessInferenceEndpointAuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerlessInferenceEndpointAuthMode value: $value');
  }
}
