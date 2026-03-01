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
  GrantRuleToCenState({
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? cenOwnerId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? instanceId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      cenOwnerId = pulumi.Input.asOptionalInput<String>(cenOwnerId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      cenOwnerId: map['cenOwnerId'] == null ? null : pulumi.Output.create<String>(map['cenOwnerId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

