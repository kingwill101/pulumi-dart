// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_role_policy_attachments_get_role_policy_attachments_args_doc}
/// Arguments for getRolePolicyAttachments.
/// {@endtemplate}
/// {@macro pulumi_ram_get_role_policy_attachments_get_role_policy_attachments_args_doc}
class GetRolePolicyAttachmentsArgs {
  /// A list of Role Policy Attachment IDs. The value is formulated as `role:<policy_name>:<policy_type>:<role_name>`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The RAM role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [GetRolePolicyAttachmentsArgs].
  /// [ids] A list of Role Policy Attachment IDs. The value is formulated as `role:<policy_name>:<policy_type>:<role_name>`.
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
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      roleName: (map['roleName'] as String).input(),
    );
  }
}

