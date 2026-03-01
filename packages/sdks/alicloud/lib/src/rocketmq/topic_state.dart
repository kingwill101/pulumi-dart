// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// ID of the ONS Instance that owns the topics.
  final pulumi.Input<String>? instanceId;
  /// The type of the message. Read [Ons Topic Create](https://www.alibabacloud.com/help/doc-detail/29591.html) for further details.
  final pulumi.Input<int>? messageType;
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

  /// Creates a new [TopicState].
  /// [instanceId] ID of the ONS Instance that owns the topics.
  /// [messageType] The type of the message. Read [Ons Topic Create](https://www.alibabacloud.com/help/doc-detail/29591.html) for further details.
  /// [perm] This attribute has been deprecated.
  /// [remark] This attribute is a concise description of topic. The length cannot exceed 128.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topic] Replaced by `topic_name` after version 1.97.0.
  /// [topicName] Name of the topic. Two topics on a single instance cannot have the same name and the name cannot start with 'GID' or 'CID'. The length cannot exceed 64 characters.
  TopicState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<int>? messageType,
    pulumi.Output<int>? perm,
    pulumi.Output<String>? remark,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topic,
    pulumi.Output<String>? topicName,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      messageType = pulumi.Input.asOptionalInput<int>(messageType),
      perm = pulumi.Input.asOptionalInput<int>(perm),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topic = pulumi.Input.asOptionalInput<String>(topic),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'messageType': ?messageType,
      'perm': ?perm,
      'remark': ?remark,
      'tags': ?tags,
      'topic': ?topic,
      'topicName': ?topicName,
    };
  }

  factory TopicState.fromMap(Map<String, dynamic> map) {
    return TopicState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      messageType: map['messageType'] == null ? null : pulumi.Output.create<int>(map['messageType'] as int),
      perm: map['perm'] == null ? null : pulumi.Output.create<int>(map['perm'] as int),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topic: map['topic'] == null ? null : pulumi.Output.create<String>(map['topic'] as String),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

