// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_role_policy_attachments_get_role_policy_attachments_args_doc}
/// Arguments for getRolePolicyAttachments.
/// {@endtemplate}
/// {@macro pulumi_ram_get_role_policy_attachments_get_role_policy_attachments_args_doc}
class GetRolePolicyAttachmentsArgs {
  /// A list of Role Policy Attachment IDs. The value is formulated as `role:&lt;policy_name&gt;:&lt;policy_type&gt;:&lt;role_name&gt;`.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The RAM role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetRolePolicyAttachmentsArgs].
  /// [ids] A list of Role Policy Attachment IDs. The value is formulated as `role:&lt;policy_name&gt;:&lt;policy_type&gt;:&lt;role_name&gt;`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [roleName] The RAM role name.
  GetRolePolicyAttachmentsArgs({
    this.ids,
    this.outputFile,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'roleName': roleName,
    };
  }

  factory GetRolePolicyAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}
