// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFilesAccessPointRootDirectoryCreationPermission {
  /// Owner group ID.
  final pulumi.Input<int> ownerGid;
  /// Owner user ID.
  final pulumi.Input<int> ownerUid;
  /// POSIX permissions in octal notation.
  final pulumi.Input<String> permissions;

  /// Creates a new [GetFilesAccessPointRootDirectoryCreationPermission].
  /// [ownerGid] Owner group ID.
  /// [ownerUid] Owner user ID.
  /// [permissions] POSIX permissions in octal notation.
  const GetFilesAccessPointRootDirectoryCreationPermission({
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

  factory GetFilesAccessPointRootDirectoryCreationPermission.fromMap(Map<String, dynamic> map) {
    return GetFilesAccessPointRootDirectoryCreationPermission(
      ownerGid: pulumi.Input.fromValue((map['ownerGid'] as num).toInt()),
      ownerUid: pulumi.Input.fromValue((map['ownerUid'] as num).toInt()),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}
