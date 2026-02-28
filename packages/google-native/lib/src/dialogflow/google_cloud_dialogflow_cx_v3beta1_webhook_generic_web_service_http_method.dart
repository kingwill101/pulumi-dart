/// Optional. HTTP method for the flexible webhook calls. Standard webhook always uses POST.
enum GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod(
      this.value);
  final String value;

  static GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod
      fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceHttpMethod value: $value');
  }
}
