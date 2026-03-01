// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v2_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v2_folder_args_doc}
class FolderArgs {
  /// The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  final pulumi.Input<String>? displayName;

  /// The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  final pulumi.Input<String> parent;

  /// Creates a new [FolderArgs].
  /// [displayName] The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  /// [parent] The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  FolderArgs({String? displayName, required String parent})
    : displayName = pulumi.Input.asOptionalInput<String>(displayName),
      parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'parent': parent};
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      parent: map['parent'] as String,
    );
  }
}
