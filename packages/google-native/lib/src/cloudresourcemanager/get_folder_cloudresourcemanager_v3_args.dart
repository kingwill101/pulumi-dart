// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_folder_cloudresourcemanager_v3_args_doc}
/// Arguments for getFolder.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_folder_cloudresourcemanager_v3_args_doc}
class GetFolderCloudresourcemanagerV3Args {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderCloudresourcemanagerV3Args].
  /// [folderId] Required.
  GetFolderCloudresourcemanagerV3Args({
    required String folderId,
  }) : folderId = pulumi.Input.asInput<String>(folderId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderCloudresourcemanagerV3Args.fromMap(
      Map<String, dynamic> map) {
    return GetFolderCloudresourcemanagerV3Args(
      folderId: map['folderId'] as String,
    );
  }
}
