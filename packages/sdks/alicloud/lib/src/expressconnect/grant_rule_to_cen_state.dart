// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GrantRuleToCen resources.
class GrantRuleToCenState {
  /// The ID of the CEN instance to which you want to grant permissions.
  final pulumi.Input<String>? cenId;
  /// The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  final pulumi.Input<String>? cenOwnerId;
  /// (Available since v1.263.0) The time when the instance was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the VBR.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [GrantRuleToCenState].
  /// [cenId] The ID of the CEN instance to which you want to grant permissions.
  /// [cenOwnerId] The user ID (UID) of the Alibaba Cloud account to which the CEN instance belongs.
  /// [createTime] (Available since v1.263.0) The time when the instance was created.
  /// [instanceId] The ID of the VBR.
  const GrantRuleToCenState({
    this.cenId,
    this.cenOwnerId,
    this.createTime,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'cenOwnerId': ?cenOwnerId,
      'createTime': ?createTime,
      'instanceId': ?instanceId,
    };
  }

  factory GrantRuleToCenState.fromMap(Map<String, dynamic> map) {
    return GrantRuleToCenState(
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenOwnerId: (() { final guardedValue = map['cenOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

