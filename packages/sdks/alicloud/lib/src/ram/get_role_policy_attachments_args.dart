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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> roleName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'roleName': roleName,
    };
  }

  factory GetRolePolicyAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

