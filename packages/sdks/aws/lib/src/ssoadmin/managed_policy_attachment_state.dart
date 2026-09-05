// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedPolicyAttachment resources.
class ManagedPolicyAttachmentState {
  /// ARN of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String?>? instanceArn;
  /// IAM managed policy ARN to be attached to the Permission Set.
  final pulumi.Input<String?>? managedPolicyArn;
  /// The name of the IAM Managed Policy.
  final pulumi.Input<String?>? managedPolicyName;
  /// ARN of the Permission Set.
  final pulumi.Input<String?>? permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [ManagedPolicyAttachmentState].
  /// [instanceArn] ARN of the SSO Instance under which the operation will be executed.
  /// [managedPolicyArn] IAM managed policy ARN to be attached to the Permission Set.
  /// [managedPolicyName] The name of the IAM Managed Policy.
  /// [permissionSetArn] ARN of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ManagedPolicyAttachmentState({
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
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedPolicyArn: (() { final guardedValue = map['managedPolicyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedPolicyName: (() { final guardedValue = map['managedPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionSetArn: (() { final guardedValue = map['permissionSetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
