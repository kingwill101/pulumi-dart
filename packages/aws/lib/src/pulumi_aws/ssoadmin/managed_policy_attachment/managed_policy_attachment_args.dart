// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ManagedPolicyAttachment.
class ManagedPolicyAttachmentArgs {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final Input<String> instanceArn;

  /// The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.
  final Input<String> managedPolicyArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  final Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ManagedPolicyAttachmentArgs({
    required this.instanceArn,
    required this.managedPolicyArn,
    required this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceArn'] = instanceArn;
    map['managedPolicyArn'] = managedPolicyArn;
    map['permissionSetArn'] = permissionSetArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ManagedPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentArgs(
      instanceArn: Input.asInput<String>(map['instanceArn']),
      managedPolicyArn: Input.asInput<String>(map['managedPolicyArn']),
      permissionSetArn: Input.asInput<String>(map['permissionSetArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
