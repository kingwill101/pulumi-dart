// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SharedTarget resources.
class SharedTargetState {
  /// (Available since v1.259.0) The time when the association of the entity was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the resource share.
  final pulumi.Input<String>? resourceShareId;
  /// The status of shared target.
  final pulumi.Input<String>? status;
  /// The ID of the principal.
  final pulumi.Input<String>? targetId;

  /// Creates a new [SharedTargetState].
  /// [createTime] (Available since v1.259.0) The time when the association of the entity was created.
  /// [resourceShareId] The ID of the resource share.
  /// [status] The status of shared target.
  /// [targetId] The ID of the principal.
  SharedTargetState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? resourceShareId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? targetId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      resourceShareId = pulumi.Input.asOptionalInput<String>(resourceShareId),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetId = pulumi.Input.asOptionalInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'resourceShareId': ?resourceShareId,
      'status': ?status,
      'targetId': ?targetId,
    };
  }

  factory SharedTargetState.fromMap(Map<String, dynamic> map) {
    return SharedTargetState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      resourceShareId: map['resourceShareId'] == null ? null : pulumi.Output.create<String>(map['resourceShareId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
    );
  }
}

