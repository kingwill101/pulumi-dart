// ignore_for_file: unused_element, unnecessary_cast


class GetTopicsTopic {
  /// The id of the topic.
  final String id;
  /// Indicates whether namespaces are available. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  final bool independentNaming;
  /// ID of the ONS Instance that owns the topics.
  final String instanceId;
  /// The type of the message. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  final int messageType;
  /// The ID of the topic owner, which is the Alibaba Cloud UID.
  final String owner;
  /// This attribute is used to set the read-write mode for the topic.
  final int perm;
  /// The relation ID. Read [Fields in PublishInfoDo](https://www.alibabacloud.com/help/doc-detail/29590.html) for further details.
  final int relation;
  /// The name of the relation, for example, owner, publishable, subscribable, and publishable and subscribable.
  final String relationName;
  /// Remark of the topic.
  final String remark;
  /// A map of tags assigned to the Ons instance.
  final Map<String, String> tags;
  /// The name of the topic.
  final String topic;
  /// The name of the topic.
  final String topicName;

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
      id: map['id'] as String,
      independentNaming: map['independentNaming'] as bool,
      instanceId: map['instanceId'] as String,
      messageType: map['messageType'] as int,
      owner: map['owner'] as String,
      perm: map['perm'] as int,
      relation: map['relation'] as int,
      relationName: map['relationName'] as String,
      remark: map['remark'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topic: map['topic'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

