// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_topic_topic_args_doc}
class TopicArgs {
  /// ID of the ONS Instance that owns the topics.
  final pulumi.Input<String> instanceId;
  /// The type of the message. Read [Ons Topic Create](https://www.alibabacloud.com/help/doc-detail/29591.html) for further details.
  final pulumi.Input<int> messageType;
  /// This attribute has been deprecated.
  final pulumi.Input<int>? perm;
  /// This attribute is a concise description of topic. The length cannot exceed 128.
  final pulumi.Input<String>? remark;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// > **NOTE:** At least one of `topic_name` and `topic` should be set.
  final pulumi.Input<Map<String, String>>? tags;
  /// Replaced by `topic_name` after version 1.97.0.
  final pulumi.Input<String>? topic;
  /// Name of the topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters.
  final pulumi.Input<String>? topicName;

  /// Creates a new [TopicArgs].
  /// [instanceId] ID of the ONS Instance that owns the topics.
  /// [messageType] The type of the message. Read [Ons Topic Create](https://www.alibabacloud.com/help/doc-detail/29591.html) for further details.
  /// [perm] This attribute has been deprecated.
  /// [remark] This attribute is a concise description of topic. The length cannot exceed 128.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topic] Replaced by `topic_name` after version 1.97.0.
  /// [topicName] Name of the topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters.
  TopicArgs({
    required this.instanceId,
    required this.messageType,
    this.perm,
    this.remark,
    this.tags,
    this.topic,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'messageType': messageType,
      'perm': ?perm,
      'remark': ?remark,
      'tags': ?tags,
      'topic': ?topic,
      'topicName': ?topicName,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      instanceId: (map['instanceId'] as String).input(),
      messageType: (map['messageType'] as int).input(),
      perm: map['perm'] == null ? null : (map['perm']! as int).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

