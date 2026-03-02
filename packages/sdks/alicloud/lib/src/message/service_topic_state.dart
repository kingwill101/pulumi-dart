// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceTopic resources.
class ServiceTopicState {
  /// (Available since v1.241.0) The time when the topic was created.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  final pulumi.Input<bool>? enableLogging;
  /// . Field `logging_enabled` has been deprecated from provider version 1.241.0. New field `enable_logging` instead.
  final pulumi.Input<bool>? loggingEnabled;
  /// The maximum length of the message that is sent to the topic. Default value: `65536`. Valid values: `1024` to `65536`. Unit: bytes.
  final pulumi.Input<int>? maxMessageSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the topic.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? topicName;

  /// Creates a new [ServiceTopicState].
  /// [createTime] (Available since v1.241.0) The time when the topic was created.
  /// [enableLogging] Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  /// [loggingEnabled] . Field `logging_enabled` has been deprecated from provider version 1.241.0. New field `enable_logging` instead.
  /// [maxMessageSize] The maximum length of the message that is sent to the topic. Default value: `65536`. Valid values: `1024` to `65536`. Unit: bytes.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topicName] The name of the topic.
  ServiceTopicState({
    this.createTime,
    this.enableLogging,
    this.loggingEnabled,
    this.maxMessageSize,
    this.tags,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'enableLogging': ?enableLogging,
      'loggingEnabled': ?loggingEnabled,
      'maxMessageSize': ?maxMessageSize,
      'tags': ?tags,
      'topicName': ?topicName,
    };
  }

  factory ServiceTopicState.fromMap(Map<String, dynamic> map) {
    return ServiceTopicState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging']! as bool).input(),
      loggingEnabled: map['loggingEnabled'] == null ? null : (map['loggingEnabled']! as bool).input(),
      maxMessageSize: map['maxMessageSize'] == null ? null : (map['maxMessageSize']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

