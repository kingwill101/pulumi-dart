// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicsTopic {
  /// The id of the topic. The value is set to `name`.
  final pulumi.Input<String> id;
  /// Whether to enable logging.
  final pulumi.Input<bool> loggingEnabled;
  /// This indicates the maximum length, in bytes, of any message body sent to the topic.
  final pulumi.Input<int> maximumMessageSize;
  /// The name of the topic.
  final pulumi.Input<String> name;

  /// Creates a new [GetTopicsTopic].
  /// [id] The id of the topic. The value is set to `name`.
  /// [loggingEnabled] Whether to enable logging.
  /// [maximumMessageSize] This indicates the maximum length, in bytes, of any message body sent to the topic.
  /// [name] The name of the topic.
  const GetTopicsTopic({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      loggingEnabled: pulumi.Input.fromValue(map['loggingEnabled'] as bool),
      maximumMessageSize: pulumi.Input.fromValue(map['maximumMessageSize'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

