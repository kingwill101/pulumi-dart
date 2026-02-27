// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PermissionSetInlinePolicy.
class PermissionSetInlinePolicyArgs {
  /// The IAM inline policy to attach to a Permission Set.
  final pulumi.Input<String> inlinePolicy;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  PermissionSetInlinePolicyArgs({
    required this.inlinePolicy,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inlinePolicy'] = inlinePolicy;
    map['instanceArn'] = instanceArn;
    map['permissionSetArn'] = permissionSetArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PermissionSetInlinePolicyArgs.fromMap(Map<String, dynamic> map) {
    return PermissionSetInlinePolicyArgs(
      inlinePolicy: pulumi.Input.asInput<String>(map['inlinePolicy']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      permissionSetArn: pulumi.Input.asInput<String>(map['permissionSetArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
