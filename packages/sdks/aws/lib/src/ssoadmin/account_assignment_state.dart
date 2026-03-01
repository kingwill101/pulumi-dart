// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountAssignment resources.
class AccountAssignmentState {
  /// The Amazon Resource Name (ARN) of the SSO Instance.
  final pulumi.Input<String>? instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to.
  final pulumi.Input<String>? permissionSetArn;
  /// An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`).
  final pulumi.Input<String>? principalId;
  /// The entity type for which the assignment will be created. Valid values: `USER`, `GROUP`.
  final pulumi.Input<String>? principalType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An AWS account identifier, typically a 10-12 digit string.
  final pulumi.Input<String>? targetId;
  /// The entity type for which the assignment will be created. Valid values: `AWS_ACCOUNT`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [AccountAssignmentState].
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to.
  /// [principalId] An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`).
  /// [principalType] The entity type for which the assignment will be created. Valid values: `USER`, `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetId] An AWS account identifier, typically a 10-12 digit string.
  /// [targetType] The entity type for which the assignment will be created. Valid values: `AWS_ACCOUNT`.
  AccountAssignmentState({
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? permissionSetArn,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetId,
    pulumi.Output<String>? targetType,
  }) :
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      permissionSetArn = pulumi.Input.asOptionalInput<String>(permissionSetArn),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': ?instanceArn,
      'permissionSetArn': ?permissionSetArn,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'region': ?region,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory AccountAssignmentState.fromMap(Map<String, dynamic> map) {
    return AccountAssignmentState(
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      permissionSetArn: map['permissionSetArn'] == null ? null : pulumi.Output.create<String>(map['permissionSetArn'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

