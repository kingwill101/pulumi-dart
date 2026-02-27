// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_folders_folder/get_folders_folder.dart';

/// Result data returned by getFolders.
class GetFoldersResult {
  /// A list of folders matching the provided filter. Structure is defined below.
  final List<GetFoldersFolder> folders;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parentId;

  GetFoldersResult({
    required this.folders,
    required this.id,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folders'] =
        pulumi.Input.encodeList<GetFoldersFolder, Map<String, dynamic>>(
            folders, (value) => value.toMap());
    map['id'] = id;
    map['parentId'] = parentId;
    return map;
  }

  factory GetFoldersResult.fromMap(Map<String, dynamic> map) {
    return GetFoldersResult(
      folders: pulumi.Input.decodeList<GetFoldersFolder>(
          map['folders'],
          (value) =>
              GetFoldersFolder.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      parentId: map['parentId'] as String,
    );
  }
}
