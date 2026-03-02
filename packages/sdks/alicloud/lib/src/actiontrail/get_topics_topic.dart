// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicsTopic {
  /// whether the current topic is kafka compact topic or not.
  final pulumi.Input<bool> compactTopic;
  /// Time of creation.
  final pulumi.Input<String> createTime;
  /// The ID of the topic, It is formatted to `<instance_id>:<topic>`.
  final pulumi.Input<String> id;
  /// ID of the instance.
  final pulumi.Input<String> instanceId;
  /// whether the current topic is kafka local topic or not.
  final pulumi.Input<bool> localTopic;
  /// Partition number of the topic.
  final pulumi.Input<int> partitionNum;
  /// Remark of the topic.
  final pulumi.Input<String> remark;
  /// The current status code of the topic. There are three values to describe the topic status: 0 stands for the topic is in service, 1 stands for freezing and 2 stands for pause.
  final pulumi.Input<int> status;
  /// The status_name of the topic.
  final pulumi.Input<String> statusName;
  /// A mapping of tags to assign to the topic.
  final pulumi.Input<Map<String, String>>? tags;
  /// A topic to filter results by the topic name.
  final pulumi.Input<String> topic;

  /// Creates a new [GetTopicsTopic].
  /// [compactTopic] whether the current topic is kafka compact topic or not.
  /// [createTime] Time of creation.
  /// [id] The ID of the topic, It is formatted to `<instance_id>:<topic>`.
  /// [instanceId] ID of the instance.
  /// [localTopic] whether the current topic is kafka local topic or not.
  /// [partitionNum] Partition number of the topic.
  /// [remark] Remark of the topic.
  /// [status] The current status code of the topic. There are three values to describe the topic status: 0 stands for the topic is in service, 1 stands for freezing and 2 stands for pause.
  /// [statusName] The status_name of the topic.
  /// [tags] A mapping of tags to assign to the topic.
  /// [topic] A topic to filter results by the topic name.
  GetTopicsTopic({
    required this.compactTopic,
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.localTopic,
    required this.partitionNum,
    required this.remark,
    required this.status,
    required this.statusName,
    this.tags,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactTopic': compactTopic,
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'localTopic': localTopic,
      'partitionNum': partitionNum,
      'remark': remark,
      'status': status,
      'statusName': statusName,
      'tags': ?tags,
      'topic': topic,
    };
  }

  factory GetTopicsTopic.fromMap(Map<String, dynamic> map) {
    return GetTopicsTopic(
      compactTopic: (map['compactTopic'] as bool).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      localTopic: (map['localTopic'] as bool).input(),
      partitionNum: (map['partitionNum'] as int).input(),
      remark: (map['remark'] as String).input(),
      status: (map['status'] as int).input(),
      statusName: (map['statusName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      topic: (map['topic'] as String).input(),
    );
  }
}

