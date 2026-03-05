// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alikafka_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_alikafka_topic_topic_args_doc}
class TopicArgs {
  /// The cleanup policy for the topic. This parameter is available only if you set the storage engine of the topic to Local storage. Valid values:
  /// - false: The delete cleanup policy is used.
  /// - true: The compact cleanup policy is used.
  final pulumi.Input<bool>? compactTopic;
  /// The advanced configurations.
  final pulumi.Input<String>? configs;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The storage engine of the topic. Valid values:
  /// - false: Cloud storage.
  /// - true: Local storage.
  final pulumi.Input<bool>? localTopic;
  /// The number of partitions in the topic.
  final pulumi.Input<int>? partitionNum;
  /// The description of the topic.
  final pulumi.Input<String> remark;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The topic name.
  final pulumi.Input<String> topic;

  /// Creates a new [TopicArgs].
  /// [compactTopic] The cleanup policy for the topic. This parameter is available only if you set the storage engine of the topic to Local storage. Valid values:
  /// [configs] The advanced configurations.
  /// [instanceId] The ID of the instance.
  /// [localTopic] The storage engine of the topic. Valid values:
  /// [partitionNum] The number of partitions in the topic.
  /// [remark] The description of the topic.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topic] The topic name.
  TopicArgs({
    this.compactTopic,
    this.configs,
    required this.instanceId,
    this.localTopic,
    this.partitionNum,
    required this.remark,
    this.tags,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactTopic': ?compactTopic,
      'configs': ?configs,
      'instanceId': instanceId,
      'localTopic': ?localTopic,
      'partitionNum': ?partitionNum,
      'remark': remark,
      'tags': ?tags,
      'topic': topic,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      compactTopic: (() { final guardedValue = map['compactTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      localTopic: (() { final guardedValue = map['localTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      partitionNum: (() { final guardedValue = map['partitionNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

