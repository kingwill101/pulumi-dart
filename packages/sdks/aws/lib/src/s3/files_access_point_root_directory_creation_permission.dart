// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilesAccessPointRootDirectoryCreationPermission {
  /// Owner group ID. Changing this value forces replacement.
  final pulumi.Input<int> ownerGid;
  /// Owner user ID. Changing this value forces replacement.
  final pulumi.Input<int> ownerUid;
  /// POSIX permissions in octal notation. Changing this value forces replacement.
  final pulumi.Input<String> permissions;

  /// Creates a new [FilesAccessPointRootDirectoryCreationPermission].
  /// [ownerGid] Owner group ID. Changing this value forces replacement.
  /// [ownerUid] Owner user ID. Changing this value forces replacement.
  /// [permissions] POSIX permissions in octal notation. Changing this value forces replacement.
  const FilesAccessPointRootDirectoryCreationPermission({
    required this.ownerGid,
    required this.ownerUid,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerGid': ownerGid,
      'ownerUid': ownerUid,
      'permissions': permissions,
    };
  }

  factory FilesAccessPointRootDirectoryCreationPermission.fromMap(Map<String, dynamic> map) {
    return FilesAccessPointRootDirectoryCreationPermission(
      ownerGid: pulumi.Input.fromValue(map['ownerGid'] as int),
      ownerUid: pulumi.Input.fromValue(map['ownerUid'] as int),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}
