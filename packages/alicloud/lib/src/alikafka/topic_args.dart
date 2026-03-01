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
    bool? compactTopic,
    String? configs,
    required String instanceId,
    bool? localTopic,
    int? partitionNum,
    required String remark,
    Map<String, String>? tags,
    required String topic,
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
      compactTopic: map['compactTopic'] == null ? null : map['compactTopic'] as bool,
      configs: map['configs'] == null ? null : map['configs'] as String,
      instanceId: map['instanceId'] as String,
      localTopic: map['localTopic'] == null ? null : map['localTopic'] as bool,
      partitionNum: map['partitionNum'] == null ? null : map['partitionNum'] as int,
      remark: map['remark'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      topic: map['topic'] as String,
    );
  }
}

