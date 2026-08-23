/// Rest API method for target endpoint.
enum WebHookActivityMethod {
  pOST("POST");

  const WebHookActivityMethod(this.wireValue);
  final String wireValue;

  static WebHookActivityMethod fromValue(String value) {
    for (final item in WebHookActivityMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebHookActivityMethod value: $value');
  }
}
