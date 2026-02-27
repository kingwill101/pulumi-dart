/// The HTTP method to use for the request. The default is POST.
enum HttpRequestHttpMethodCloudtasksV2beta2 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpRequestHttpMethodCloudtasksV2beta2(this.value);
  final String value;

  static HttpRequestHttpMethodCloudtasksV2beta2 fromValue(String value) {
    for (final item in HttpRequestHttpMethodCloudtasksV2beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown HttpRequestHttpMethodCloudtasksV2beta2 value: $value');
  }
}
