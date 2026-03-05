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
    this.compactTopic,
    this.configs,
    this.createTime,
    this.instanceId,
    this.localTopic,
    this.partitionNum,
    this.regionId,
    this.remark,
    this.status,
    this.tags,
    this.topic,
  });

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
      compactTopic: (() { final guardedValue = map['compactTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localTopic: (() { final guardedValue = map['localTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      partitionNum: (() { final guardedValue = map['partitionNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

