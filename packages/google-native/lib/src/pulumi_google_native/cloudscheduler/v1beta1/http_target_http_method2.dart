/// Which HTTP method to use for the request.
enum HttpTargetHttpMethod2 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethod2(this.value);
  final String value;

  static HttpTargetHttpMethod2 fromValue(String value) {
    for (final item in HttpTargetHttpMethod2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethod2 value: $value');
  }
}
