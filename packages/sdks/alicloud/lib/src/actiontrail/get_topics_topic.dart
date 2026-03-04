// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicsTopic {
  /// whether the current topic is kafka compact topic or not.
  final pulumi.Input<bool> compactTopic;

  /// Time of creation.
  final pulumi.Input<String> createTime;

  /// The ID of the topic, It is formatted to `&lt;instance_id&gt;:&lt;topic&gt;`.
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
  /// [id] The ID of the topic, It is formatted to `&lt;instance_id&gt;:&lt;topic&gt;`.
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
      compactTopic: pulumi.Input.fromValue(map['compactTopic'] as bool),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      localTopic: pulumi.Input.fromValue(map['localTopic'] as bool),
      partitionNum: pulumi.Input.fromValue(map['partitionNum'] as int),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
      statusName: pulumi.Input.fromValue(map['statusName'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
