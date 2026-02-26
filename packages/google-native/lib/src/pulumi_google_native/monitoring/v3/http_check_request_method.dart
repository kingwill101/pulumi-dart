/// The HTTP request method to use for the check. If set to METHOD_UNSPECIFIED then request_method defaults to GET.
enum HttpCheckRequestMethod {
  methodUnspecified("METHOD_UNSPECIFIED"),
  get("GET"),
  post("POST");

  const HttpCheckRequestMethod(this.value);
  final String value;

  static HttpCheckRequestMethod fromValue(String value) {
    for (final item in HttpCheckRequestMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpCheckRequestMethod value: $value');
  }
}
