// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PermissionSetInlinePolicy resources.
class PermissionSetInlinePolicyState {
  /// The IAM inline policy to attach to a Permission Set.
  final pulumi.Input<String>? inlinePolicy;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String>? instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String>? permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [PermissionSetInlinePolicyState].
  /// [inlinePolicy] The IAM inline policy to attach to a Permission Set.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PermissionSetInlinePolicyState({
    pulumi.Output<String>? inlinePolicy,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? permissionSetArn,
    pulumi.Output<String>? region,
  }) :
      inlinePolicy = pulumi.Input.asOptionalInput<String>(inlinePolicy),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      permissionSetArn = pulumi.Input.asOptionalInput<String>(permissionSetArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inlinePolicy': ?inlinePolicy,
      'instanceArn': ?instanceArn,
      'permissionSetArn': ?permissionSetArn,
      'region': ?region,
    };
  }

  factory PermissionSetInlinePolicyState.fromMap(Map<String, dynamic> map) {
    return PermissionSetInlinePolicyState(
      inlinePolicy: map['inlinePolicy'] == null ? null : pulumi.Output.create<String>(map['inlinePolicy'] as String),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      permissionSetArn: map['permissionSetArn'] == null ? null : pulumi.Output.create<String>(map['permissionSetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

