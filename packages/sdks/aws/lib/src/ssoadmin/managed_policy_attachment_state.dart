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
    this.instanceArn,
    this.managedPolicyArn,
    this.managedPolicyName,
    this.permissionSetArn,
    this.region,
  });

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
      instanceArn: map['instanceArn'] == null ? null : (map['instanceArn'] as String).input(),
      managedPolicyArn: map['managedPolicyArn'] == null ? null : (map['managedPolicyArn'] as String).input(),
      managedPolicyName: map['managedPolicyName'] == null ? null : (map['managedPolicyName'] as String).input(),
      permissionSetArn: map['permissionSetArn'] == null ? null : (map['permissionSetArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

