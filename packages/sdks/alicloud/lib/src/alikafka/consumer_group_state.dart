// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsumerGroup resources.
class ConsumerGroupState {
  /// ID of the consumer group.
  final pulumi.Input<String>? consumerId;
  /// (Available since v1.268.0) The timestamp of when the group was created.
  final pulumi.Input<int>? createTime;
  /// Field `description` has been deprecated from provider version 1.268.0. New field `remark` instead.
  final pulumi.Input<String>? description;
  /// ID of the ALIKAFKA Instance that owns the groups.
  final pulumi.Input<String>? instanceId;
  /// (Available since v1.268.0) The region ID.
  final pulumi.Input<String>? regionId;
  /// The remark of the resource.
  final pulumi.Input<String>? remark;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConsumerGroupState].
  /// [consumerId] ID of the consumer group.
  /// [createTime] (Available since v1.268.0) The timestamp of when the group was created.
  /// [description] Field `description` has been deprecated from provider version 1.268.0. New field `remark` instead.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the groups.
  /// [regionId] (Available since v1.268.0) The region ID.
  /// [remark] The remark of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  const ConsumerGroupState({
    this.consumerId,
    this.createTime,
    this.description,
    this.instanceId,
    this.regionId,
    this.remark,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerId': ?consumerId,
      'createTime': ?createTime,
      'description': ?description,
      'instanceId': ?instanceId,
      'regionId': ?regionId,
      'remark': ?remark,
      'tags': ?tags,
    };
  }

  factory ConsumerGroupState.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupState(
      consumerId: (() { final guardedValue = map['consumerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

