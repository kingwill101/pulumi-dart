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
    this.createTime,
    this.resourceShareId,
    this.status,
    this.targetId,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShareId: (() { final guardedValue = map['resourceShareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

