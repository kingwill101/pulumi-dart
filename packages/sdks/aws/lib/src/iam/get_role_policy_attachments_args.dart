// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_role_policy_attachments_get_role_policy_attachments_args_doc}
/// Arguments for getRolePolicyAttachments.
/// {@endtemplate}
/// {@macro pulumi_iam_get_role_policy_attachments_get_role_policy_attachments_args_doc}
class GetRolePolicyAttachmentsArgs {
  /// Path prefix for filtering the results.
  final pulumi.Input<String?>? pathPrefix;
  /// Name of the IAM role.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> roleName;

  /// Creates a new [GetRolePolicyAttachmentsArgs].
  /// [pathPrefix] Path prefix for filtering the results.
  /// [roleName] Name of the IAM role.
  const GetRolePolicyAttachmentsArgs({
    this.pathPrefix,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathPrefix': ?pathPrefix,
      'roleName': roleName,
    };
  }

  factory GetRolePolicyAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsArgs(
      pathPrefix: (() { final guardedValue = map['pathPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}
