/// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
enum GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3WebhookGenericWebServiceHttpMethod value: $value');
  }
}

