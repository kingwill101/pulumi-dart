// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accessapproval_get_folder_service_account_get_folder_service_account_args_doc}
/// Arguments for getFolderServiceAccount.
/// {@endtemplate}
/// {@macro pulumi_accessapproval_get_folder_service_account_get_folder_service_account_args_doc}
class GetFolderServiceAccountArgs {
  /// The folder ID the service account was created for.
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderServiceAccountArgs].
  /// [folderId] The folder ID the service account was created for.
  GetFolderServiceAccountArgs({
    required String folderId,
  }) : folderId = pulumi.Input.asInput<String>(folderId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderServiceAccountArgs(
      folderId: map['folderId'] as String,
    );
  }
}
