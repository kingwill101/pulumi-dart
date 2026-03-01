// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folders_folder.dart';

/// Result data returned by getFolders.
class GetFoldersResult {
  final bool? enableDetails;
  /// A list of Folder. Each element contains the following attributes:
  final List<GetFoldersFolder> folders;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Folder names.
  final List<String> names;
  final String? outputFile;
  /// (Available since v1.114.0) The ID of the parent folder. **Note:** `parent_folder_id` takes effect only if `enable_details` is set to `true`.
  final String? parentFolderId;
  final String? queryKeyword;

  /// Creates a new [GetFoldersResult].
  /// [enableDetails] Optional.
  /// [folders] A list of Folder. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Folder names.
  /// [outputFile] Optional.
  /// [parentFolderId] (Available since v1.114.0) The ID of the parent folder. **Note:** `parent_folder_id` takes effect only if `enable_details` is set to `true`.
  /// [queryKeyword] Optional.
  GetFoldersResult({
    this.enableDetails,
    required this.folders,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.parentFolderId,
    this.queryKeyword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'folders': pulumi.Input.encodeList<GetFoldersFolder, Map<String, dynamic>>(folders, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'parentFolderId': ?parentFolderId,
      'queryKeyword': ?queryKeyword,
    };
  }

  factory GetFoldersResult.fromMap(Map<String, dynamic> map) {
    return GetFoldersResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      folders: pulumi.Input.decodeList<GetFoldersFolder>(map['folders'], (value) => GetFoldersFolder.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parentFolderId: map['parentFolderId'] == null ? null : map['parentFolderId'] as String,
      queryKeyword: map['queryKeyword'] == null ? null : map['queryKeyword'] as String,
    );
  }
}

