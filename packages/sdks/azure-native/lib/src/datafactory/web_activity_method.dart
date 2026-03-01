/// Rest API method for target endpoint.
enum WebActivityMethod {
  valueGET("GET"),
  valuePOST("POST"),
  valuePUT("PUT"),
  valueDELETE("DELETE");

  const WebActivityMethod(this.value);
  final String value;

  static WebActivityMethod fromValue(String value) {
    for (final item in WebActivityMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebActivityMethod value: $value');
  }
}

