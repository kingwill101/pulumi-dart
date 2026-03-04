// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_folder_folder_args_doc}
class FolderArgs {
  /// The name of the folder.
  final pulumi.Input<String> folderName;

  /// The ID of the parent folder.
  final pulumi.Input<String>? parentFolderId;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FolderArgs].
  /// [folderName] The name of the folder.
  /// [parentFolderId] The ID of the parent folder.
  /// [tags] The tag of the resource.
  FolderArgs({required this.folderName, this.parentFolderId, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderName': folderName,
      'parentFolderId': ?parentFolderId,
      'tags': ?tags,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      folderName: pulumi.Input.fromValue(map['folderName'] as String),
      parentFolderId: (() {
        final guardedValue = map['parentFolderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
