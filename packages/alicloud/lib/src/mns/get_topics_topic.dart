// ignore_for_file: unused_element, unnecessary_cast


class GetTopicsTopic {
  /// The id of the topic. The value is set to `name`.
  final String id;
  /// Whether to enable logging.
  final bool loggingEnabled;
  /// This indicates the maximum length, in bytes, of any message body sent to the topic.
  final int maximumMessageSize;
  /// The name of the topic.
  final String name;

  /// Creates a new [GetTopicsTopic].
  /// [id] The id of the topic. The value is set to `name`.
  /// [loggingEnabled] Whether to enable logging.
  /// [maximumMessageSize] This indicates the maximum length, in bytes, of any message body sent to the topic.
  /// [name] The name of the topic.
  GetTopicsTopic({
    required this.id,
    required this.loggingEnabled,
    required this.maximumMessageSize,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'loggingEnabled': loggingEnabled,
      'maximumMessageSize': maximumMessageSize,
      'name': name,
    };
  }

  factory GetTopicsTopic.fromMap(Map<String, dynamic> map) {
    return GetTopicsTopic(
      id: map['id'] as String,
      loggingEnabled: map['loggingEnabled'] as bool,
      maximumMessageSize: map['maximumMessageSize'] as int,
      name: map['name'] as String,
    );
  }
}

