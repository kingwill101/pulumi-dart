/// The HTTP method to use for the request. The default is POST.
enum HttpRequestHttpMethod3 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpRequestHttpMethod3(this.value);
  final String value;

  static HttpRequestHttpMethod3 fromValue(String value) {
    for (final item in HttpRequestHttpMethod3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRequestHttpMethod3 value: $value');
  }
}
