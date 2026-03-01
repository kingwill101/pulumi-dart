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
    pulumi.Output<bool>? compactTopic,
    pulumi.Output<String>? configs,
    required pulumi.Output<String> instanceId,
    pulumi.Output<bool>? localTopic,
    pulumi.Output<int>? partitionNum,
    required pulumi.Output<String> remark,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> topic,
  }) :
      compactTopic = pulumi.Input.asOptionalInput<bool>(compactTopic),
      configs = pulumi.Input.asOptionalInput<String>(configs),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      localTopic = pulumi.Input.asOptionalInput<bool>(localTopic),
      partitionNum = pulumi.Input.asOptionalInput<int>(partitionNum),
      remark = pulumi.Input.asInput<String>(remark),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topic = pulumi.Input.asInput<String>(topic);

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
      compactTopic: map['compactTopic'] == null ? null : pulumi.Output.create<bool>(map['compactTopic'] as bool),
      configs: map['configs'] == null ? null : pulumi.Output.create<String>(map['configs'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      localTopic: map['localTopic'] == null ? null : pulumi.Output.create<bool>(map['localTopic'] as bool),
      partitionNum: map['partitionNum'] == null ? null : pulumi.Output.create<int>(map['partitionNum'] as int),
      remark: pulumi.Output.create<String>(map['remark'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topic: pulumi.Output.create<String>(map['topic'] as String),
    );
  }
}

