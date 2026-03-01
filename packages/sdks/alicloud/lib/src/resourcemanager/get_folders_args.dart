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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? parentFolderId,
    pulumi.Output<String>? queryKeyword,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parentFolderId = pulumi.Input.asOptionalInput<String>(parentFolderId),
      queryKeyword = pulumi.Input.asOptionalInput<String>(queryKeyword);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      parentFolderId: map['parentFolderId'] == null ? null : pulumi.Output.create<String>(map['parentFolderId'] as String),
      queryKeyword: map['queryKeyword'] == null ? null : pulumi.Output.create<String>(map['queryKeyword'] as String),
    );
  }
}

