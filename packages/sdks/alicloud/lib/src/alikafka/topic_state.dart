// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// The cleanup policy for the topic. This parameter is available only if you set the storage engine of the topic to Local storage. Valid values:
  /// - false: The delete cleanup policy is used.
  /// - true: The compact cleanup policy is used.
  final pulumi.Input<bool>? compactTopic;
  /// The advanced configurations.
  final pulumi.Input<String>? configs;
  /// (Available since v1.262.1) The time when the topic was created.
  final pulumi.Input<int>? createTime;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The storage engine of the topic. Valid values:
  /// - false: Cloud storage.
  /// - true: Local storage.
  final pulumi.Input<bool>? localTopic;
  /// The number of partitions in the topic.
  final pulumi.Input<int>? partitionNum;
  /// (Available since v1.262.1) The ID of the region where the instance resides.
  final pulumi.Input<String>? regionId;
  /// The description of the topic.
  final pulumi.Input<String>? remark;
  /// (Available since v1.262.1) The status of the service.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The topic name.
  final pulumi.Input<String>? topic;

  /// Creates a new [TopicState].
  /// [compactTopic] The cleanup policy for the topic. This parameter is available only if you set the storage engine of the topic to Local storage. Valid values:
  /// [configs] The advanced configurations.
  /// [createTime] (Available since v1.262.1) The time when the topic was created.
  /// [instanceId] The ID of the instance.
  /// [localTopic] The storage engine of the topic. Valid values:
  /// [partitionNum] The number of partitions in the topic.
  /// [regionId] (Available since v1.262.1) The ID of the region where the instance resides.
  /// [remark] The description of the topic.
  /// [status] (Available since v1.262.1) The status of the service.
  /// [tags] A mapping of tags to assign to the resource.
  /// [topic] The topic name.
  TopicState({
    pulumi.Output<bool>? compactTopic,
    pulumi.Output<String>? configs,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<bool>? localTopic,
    pulumi.Output<int>? partitionNum,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topic,
  }) :
      compactTopic = pulumi.Input.asOptionalInput<bool>(compactTopic),
      configs = pulumi.Input.asOptionalInput<String>(configs),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      localTopic = pulumi.Input.asOptionalInput<bool>(localTopic),
      partitionNum = pulumi.Input.asOptionalInput<int>(partitionNum),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topic = pulumi.Input.asOptionalInput<String>(topic);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compactTopic': ?compactTopic,
      'configs': ?configs,
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'localTopic': ?localTopic,
      'partitionNum': ?partitionNum,
      'regionId': ?regionId,
      'remark': ?remark,
      'status': ?status,
      'tags': ?tags,
      'topic': ?topic,
    };
  }

  factory TopicState.fromMap(Map<String, dynamic> map) {
    return TopicState(
      compactTopic: map['compactTopic'] == null ? null : pulumi.Output.create<bool>(map['compactTopic'] as bool),
      configs: map['configs'] == null ? null : pulumi.Output.create<String>(map['configs'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      localTopic: map['localTopic'] == null ? null : pulumi.Output.create<bool>(map['localTopic'] as bool),
      partitionNum: map['partitionNum'] == null ? null : pulumi.Output.create<int>(map['partitionNum'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topic: map['topic'] == null ? null : pulumi.Output.create<String>(map['topic'] as String),
    );
  }
}

