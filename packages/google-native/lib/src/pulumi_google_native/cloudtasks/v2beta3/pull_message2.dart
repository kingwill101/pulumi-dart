// ignore_for_file: unused_element, unnecessary_cast

/// Pull Message. This proto can only be used for tasks in a queue which has PULL type. It currently exists for backwards compatibility with the App Engine Task Queue SDK. This message type maybe returned with methods list and get, when the response view is FULL.
class PullMessage2 {
  /// A data payload consumed by the worker to execute the task.
  final String? payload;

  /// The tasks's tag. The tag is less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  final String? tag;

  PullMessage2({
    this.payload,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final payloadValue = payload;
    if (payloadValue != null) {
      map['payload'] = payloadValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory PullMessage2.fromMap(Map<String, dynamic> map) {
    return PullMessage2(
      payload: map['payload'] == null ? null : map['payload'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
