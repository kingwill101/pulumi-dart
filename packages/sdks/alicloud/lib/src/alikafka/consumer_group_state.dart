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
  ConsumerGroupState({
    pulumi.Output<String>? consumerId,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? remark,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      consumerId = pulumi.Input.asOptionalInput<String>(consumerId),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      consumerId: map['consumerId'] == null ? null : pulumi.Output.create<String>(map['consumerId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

