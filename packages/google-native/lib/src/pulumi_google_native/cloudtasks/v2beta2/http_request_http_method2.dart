/// The HTTP method to use for the request. The default is POST.
enum HttpRequestHttpMethod2 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpRequestHttpMethod2(this.value);
  final String value;

  static HttpRequestHttpMethod2 fromValue(String value) {
    for (final item in HttpRequestHttpMethod2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRequestHttpMethod2 value: $value');
  }
}
