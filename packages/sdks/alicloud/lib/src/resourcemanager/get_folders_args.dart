// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_folders_get_folders_args_doc}
/// Arguments for getFolders.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_folders_get_folders_args_doc}
class GetFoldersArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Folders IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Folder name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the parent folder. **NOTE:** If `parent_folder_id` is not set, the information of the first-level subfolders of the Root folder is queried.
  final pulumi.Input<String>? parentFolderId;
  /// The keyword used for the query, such as a folder name. Fuzzy match is supported.
  final pulumi.Input<String>? queryKeyword;

  /// Creates a new [GetFoldersArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Folders IDs.
  /// [nameRegex] A regex string to filter results by Folder name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentFolderId] The ID of the parent folder. **NOTE:** If `parent_folder_id` is not set, the information of the first-level subfolders of the Root folder is queried.
  /// [queryKeyword] The keyword used for the query, such as a folder name. Fuzzy match is supported.
  GetFoldersArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.parentFolderId,
    this.queryKeyword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'parentFolderId': ?parentFolderId,
      'queryKeyword': ?queryKeyword,
    };
  }

  factory GetFoldersArgs.fromMap(Map<String, dynamic> map) {
    return GetFoldersArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      parentFolderId: map['parentFolderId'] == null ? null : (map['parentFolderId']! as String).input(),
      queryKeyword: map['queryKeyword'] == null ? null : (map['queryKeyword']! as String).input(),
    );
  }
}

