/// The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
enum AppEngineHttpTargetHttpMethod {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const AppEngineHttpTargetHttpMethod(this.value);
  final String value;

  static AppEngineHttpTargetHttpMethod fromValue(String value) {
    for (final item in AppEngineHttpTargetHttpMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppEngineHttpTargetHttpMethod value: $value');
  }
}

