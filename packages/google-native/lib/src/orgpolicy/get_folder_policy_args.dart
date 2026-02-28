// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orgpolicy_v2_get_folder_policy_args_doc}
/// Arguments for getFolderPolicy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_get_folder_policy_args_doc}
class GetFolderPolicyArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> policyId;

  /// Creates a new [GetFolderPolicyArgs].
  /// [folderId] Required.
  /// [policyId] Required.
  GetFolderPolicyArgs({
    required String folderId,
    required String policyId,
  })  : folderId = pulumi.Input.asInput<String>(folderId),
        policyId = pulumi.Input.asInput<String>(policyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    map['policyId'] = policyId;
    return map;
  }

  factory GetFolderPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderPolicyArgs(
      folderId: map['folderId'] as String,
      policyId: map['policyId'] as String,
    );
  }
}
