/// Rest API method for target endpoint.
enum WebActivityMethod {
  gET("GET"),
  pOST("POST"),
  pUT("PUT"),
  dELETE("DELETE");

  const WebActivityMethod(this.wireValue);
  final String wireValue;

  static WebActivityMethod fromValue(String value) {
    for (final item in WebActivityMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebActivityMethod value: $value');
  }
}
