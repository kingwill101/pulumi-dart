// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_get_permission_sets_get_permission_sets_args_doc}
/// Arguments for getPermissionSets.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_permission_sets_get_permission_sets_args_doc}
class GetPermissionSetsArgs {
  /// ARN of the SSO Instance associated with the permission set.
  final pulumi.Input<String> instanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPermissionSetsArgs].
  /// [instanceArn] ARN of the SSO Instance associated with the permission set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPermissionSetsArgs({required String instanceArn, String? region})
    : instanceArn = pulumi.Input.asInput<String>(instanceArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceArn': instanceArn, 'region': ?region};
  }

  factory GetPermissionSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetsArgs(
      instanceArn: map['instanceArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
