/// The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. Note that if the value is set to HttpMethod the HttpRequest of the task will be ignored at execution time.
enum HttpTargetHttpMethod4 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethod4(this.value);
  final String value;

  static HttpTargetHttpMethod4 fromValue(String value) {
    for (final item in HttpTargetHttpMethod4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethod4 value: $value');
  }
}
