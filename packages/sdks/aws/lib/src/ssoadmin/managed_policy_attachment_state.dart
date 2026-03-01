// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPolicyAttachment resources.
class ManagedPolicyAttachmentState {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String>? instanceArn;
  /// The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.
  final pulumi.Input<String>? managedPolicyArn;
  /// The name of the IAM Managed Policy.
  final pulumi.Input<String>? managedPolicyName;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String>? permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ManagedPolicyAttachmentState].
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [managedPolicyArn] The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.
  /// [managedPolicyName] The name of the IAM Managed Policy.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ManagedPolicyAttachmentState({
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? managedPolicyArn,
    pulumi.Output<String>? managedPolicyName,
    pulumi.Output<String>? permissionSetArn,
    pulumi.Output<String>? region,
  }) :
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      managedPolicyArn = pulumi.Input.asOptionalInput<String>(managedPolicyArn),
      managedPolicyName = pulumi.Input.asOptionalInput<String>(managedPolicyName),
      permissionSetArn = pulumi.Input.asOptionalInput<String>(permissionSetArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceArn': ?instanceArn,
      'managedPolicyArn': ?managedPolicyArn,
      'managedPolicyName': ?managedPolicyName,
      'permissionSetArn': ?permissionSetArn,
      'region': ?region,
    };
  }

  factory ManagedPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentState(
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      managedPolicyArn: map['managedPolicyArn'] == null ? null : pulumi.Output.create<String>(map['managedPolicyArn'] as String),
      managedPolicyName: map['managedPolicyName'] == null ? null : pulumi.Output.create<String>(map['managedPolicyName'] as String),
      permissionSetArn: map['permissionSetArn'] == null ? null : pulumi.Output.create<String>(map['permissionSetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

