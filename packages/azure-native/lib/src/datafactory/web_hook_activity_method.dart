/// Rest API method for target endpoint.
enum WebHookActivityMethod {
  valuePOST("POST");

  const WebHookActivityMethod(this.value);
  final String value;

  static WebHookActivityMethod fromValue(String value) {
    for (final item in WebHookActivityMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebHookActivityMethod value: $value');
  }
}

