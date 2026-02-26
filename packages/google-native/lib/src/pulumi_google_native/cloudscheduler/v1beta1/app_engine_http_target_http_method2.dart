/// The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
enum AppEngineHttpTargetHttpMethod2 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const AppEngineHttpTargetHttpMethod2(this.value);
  final String value;

  static AppEngineHttpTargetHttpMethod2 fromValue(String value) {
    for (final item in AppEngineHttpTargetHttpMethod2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppEngineHttpTargetHttpMethod2 value: $value');
  }
}
