/// The HTTP method to use for the request. The default is POST. The app's request handler for the task's target URL must be able to handle HTTP requests with this http_method, otherwise the task attempt fails with error code 405 (Method Not Allowed). See [Writing a push task request handler](https://cloud.google.com/appengine/docs/java/taskqueue/push/creating-handlers#writing_a_push_task_request_handler) and the App Engine documentation for your runtime on [How Requests are Handled](https://cloud.google.com/appengine/docs/standard/python3/how-requests-are-handled).
enum AppEngineHttpRequestHttpMethodCloudtasksV2beta2 {
  httpMethodUnspecified("HTTP_METHOD_UNSPECIFIED"),
  post("POST"),
  get("GET"),
  head("HEAD"),
  put("PUT"),
  delete("DELETE"),
  patch("PATCH"),
  options("OPTIONS");

  const AppEngineHttpRequestHttpMethodCloudtasksV2beta2(this.value);
  final String value;

  static AppEngineHttpRequestHttpMethodCloudtasksV2beta2 fromValue(String value) {
    for (final item in AppEngineHttpRequestHttpMethodCloudtasksV2beta2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppEngineHttpRequestHttpMethodCloudtasksV2beta2 value: $value');
  }
}

