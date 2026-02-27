// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Folder.
class FolderArgs3 {
  /// The folder's display name. A folder's display name must be unique amongst its siblings. For example, no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  final Input<String>? displayName;

  /// The folder's parent's resource name. Updates to the folder's parent must be performed using MoveFolder.
  final Input<String> parent;

  FolderArgs3({
    this.displayName,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['parent'] = parent;
    return map;
  }

  factory FolderArgs3.fromMap(Map<String, dynamic> map) {
    return FolderArgs3(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
