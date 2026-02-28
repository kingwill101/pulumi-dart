/// Which HTTP method to use for the request.
enum HttpTargetHttpMethodCloudschedulerV1beta1 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const HttpTargetHttpMethodCloudschedulerV1beta1(this.value);
  final String value;

  static HttpTargetHttpMethodCloudschedulerV1beta1 fromValue(String value) {
    for (final item in HttpTargetHttpMethodCloudschedulerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpTargetHttpMethodCloudschedulerV1beta1 value: $value');
  }
}

