// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointRootDirectoryCreationInfo {
  /// POSIX group ID to apply to the `root_directory`.
  final pulumi.Input<int> ownerGid;
  /// POSIX user ID to apply to the `root_directory`.
  final pulumi.Input<int> ownerUid;
  /// POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits.
  final pulumi.Input<String> permissions;

  /// Creates a new [AccessPointRootDirectoryCreationInfo].
  /// [ownerGid] POSIX group ID to apply to the `root_directory`.
  /// [ownerUid] POSIX user ID to apply to the `root_directory`.
  /// [permissions] POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits.
  const AccessPointRootDirectoryCreationInfo({
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

  factory AccessPointRootDirectoryCreationInfo.fromMap(Map<String, dynamic> map) {
    return AccessPointRootDirectoryCreationInfo(
      ownerGid: pulumi.Input.fromValue(map['ownerGid'] as int),
      ownerUid: pulumi.Input.fromValue(map['ownerUid'] as int),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}

