// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_message_service_topic_service_topic_args_doc}
/// The set of arguments for ServiceTopic.
/// {@endtemplate}
/// {@macro pulumi_message_service_topic_service_topic_args_doc}
class ServiceTopicArgs {
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
  final pulumi.Input<String> topicName;

  /// Creates a new [ServiceTopicArgs].
  /// [enableLogging] Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  /// [loggingEnabled] . Field `logging_enabled` has been deprecated from provider version 1.241.0. New field `enable_logging` instead.
  /// [maxMessageSize] The maximum length of the message that is sent to the topic. Default value: `65536`. Valid values: `1024` to `65536`. Unit: bytes.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topicName] The name of the topic.
  ServiceTopicArgs({
    this.enableLogging,
    this.loggingEnabled,
    this.maxMessageSize,
    this.tags,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableLogging': ?enableLogging,
      'loggingEnabled': ?loggingEnabled,
      'maxMessageSize': ?maxMessageSize,
      'tags': ?tags,
      'topicName': topicName,
    };
  }

  factory ServiceTopicArgs.fromMap(Map<String, dynamic> map) {
    return ServiceTopicArgs(
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging']! as bool).input(),
      loggingEnabled: map['loggingEnabled'] == null ? null : (map['loggingEnabled']! as bool).input(),
      maxMessageSize: map['maxMessageSize'] == null ? null : (map['maxMessageSize']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

