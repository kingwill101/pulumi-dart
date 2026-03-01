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
  FolderArgs({
    required pulumi.Output<String> folderName,
    pulumi.Output<String>? parentFolderId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      folderName = pulumi.Input.asInput<String>(folderName),
      parentFolderId = pulumi.Input.asOptionalInput<String>(parentFolderId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderName': folderName,
      'parentFolderId': ?parentFolderId,
      'tags': ?tags,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      folderName: pulumi.Output.create<String>(map['folderName'] as String),
      parentFolderId: map['parentFolderId'] == null ? null : pulumi.Output.create<String>(map['parentFolderId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

