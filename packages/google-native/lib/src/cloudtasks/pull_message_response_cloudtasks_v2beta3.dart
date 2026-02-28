// ignore_for_file: unused_element, unnecessary_cast

/// Pull Message. This proto can only be used for tasks in a queue which has PULL type. It currently exists for backwards compatibility with the App Engine Task Queue SDK. This message type maybe returned with methods list and get, when the response view is FULL.
class PullMessageResponseCloudtasksV2beta3 {
  /// A data payload consumed by the worker to execute the task.
  final String payload;

  /// The tasks's tag. The tag is less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  final String tag;

  /// Creates a new [PullMessageResponseCloudtasksV2beta3].
  /// [payload] A data payload consumed by the worker to execute the task.
  /// [tag] The tasks's tag. The tag is less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  PullMessageResponseCloudtasksV2beta3({
    required this.payload,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['payload'] = payload;
    map['tag'] = tag;
    return map;
  }

  factory PullMessageResponseCloudtasksV2beta3.fromMap(
      Map<String, dynamic> map) {
    return PullMessageResponseCloudtasksV2beta3(
      payload: map['payload'] as String,
      tag: map['tag'] as String,
    );
  }
}
