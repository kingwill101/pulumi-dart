// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicsTopic {
  /// The id of the topic.
  final pulumi.Input<String> id;
  /// Indicates whether namespaces are available. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  final pulumi.Input<bool> independentNaming;
  /// ID of the ONS Instance that owns the topics.
  final pulumi.Input<String> instanceId;
  /// The type of the message. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  final pulumi.Input<int> messageType;
  /// The ID of the topic owner, which is the Alibaba Cloud UID.
  final pulumi.Input<String> owner;
  /// This attribute is used to set the read-write mode for the topic.
  final pulumi.Input<int> perm;
  /// The relation ID. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  final pulumi.Input<int> relation;
  /// The name of the relation, for example, owner, publishable, subscribable, and publishable and subscribable.
  final pulumi.Input<String> relationName;
  /// Remark of the topic.
  final pulumi.Input<String> remark;
  /// A map of tags assigned to the Ons instance.
  final pulumi.Input<Map<String, String>> tags;
  /// The name of the topic.
  final pulumi.Input<String> topic;
  /// The name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicsTopic].
  /// [id] The id of the topic.
  /// [independentNaming] Indicates whether namespaces are available. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  /// [instanceId] ID of the ONS Instance that owns the topics.
  /// [messageType] The type of the message. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  /// [owner] The ID of the topic owner, which is the Alibaba Cloud UID.
  /// [perm] This attribute is used to set the read-write mode for the topic.
  /// [relation] The relation ID. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  /// [relationName] The name of the relation, for example, owner, publishable, subscribable, and publishable and subscribable.
  /// [remark] Remark of the topic.
  /// [tags] A map of tags assigned to the Ons instance.
  /// [topic] The name of the topic.
  /// [topicName] The name of the topic.
  GetTopicsTopic({
    required this.id,
    required this.independentNaming,
    required this.instanceId,
    required this.messageType,
    required this.owner,
    required this.perm,
    required this.relation,
    required this.relationName,
    required this.remark,
    required this.tags,
    required this.topic,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'independentNaming': independentNaming,
      'instanceId': instanceId,
      'messageType': messageType,
      'owner': owner,
      'perm': perm,
      'relation': relation,
      'relationName': relationName,
      'remark': remark,
      'tags': tags,
      'topic': topic,
      'topicName': topicName,
    };
  }

  factory GetTopicsTopic.fromMap(Map<String, dynamic> map) {
    return GetTopicsTopic(
      id: (map['id'] as String).input(),
      independentNaming: (map['independentNaming'] as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      messageType: (map['messageType'] as int).input(),
      owner: (map['owner'] as String).input(),
      perm: (map['perm'] as int).input(),
      relation: (map['relation'] as int).input(),
      relationName: (map['relationName'] as String).input(),
      remark: (map['remark'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      topic: (map['topic'] as String).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

