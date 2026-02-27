// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccountAssignment.
class AccountAssignmentArgs {
  /// The Amazon Resource Name (ARN) of the SSO Instance.
  final pulumi.Input<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to.
  final pulumi.Input<String> permissionSetArn;

  /// An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`).
  final pulumi.Input<String> principalId;

  /// The entity type for which the assignment will be created. Valid values: `USER`, `GROUP`.
  final pulumi.Input<String> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An AWS account identifier, typically a 10-12 digit string.
  final pulumi.Input<String> targetId;

  /// The entity type for which the assignment will be created. Valid values: `AWS_ACCOUNT`.
  final pulumi.Input<String> targetType;

  AccountAssignmentArgs({
    required this.instanceArn,
    required this.permissionSetArn,
    required this.principalId,
    required this.principalType,
    this.region,
    required this.targetId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    map['permissionSetArn'] = permissionSetArn;
    map['principalId'] = principalId;
    map['principalType'] = principalType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetId'] = targetId;
    map['targetType'] = targetType;
    return map;
  }

  factory AccountAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AccountAssignmentArgs(
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      permissionSetArn: pulumi.Input.asInput<String>(map['permissionSetArn']),
      principalId: pulumi.Input.asInput<String>(map['principalId']),
      principalType: pulumi.Input.asInput<String>(map['principalType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetId: pulumi.Input.asInput<String>(map['targetId']),
      targetType: pulumi.Input.asInput<String>(map['targetType']),
    );
  }
}
