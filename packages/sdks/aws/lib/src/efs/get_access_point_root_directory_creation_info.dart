// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessPointRootDirectoryCreationInfo {
  /// POSIX owner group ID
  final pulumi.Input<int> ownerGid;
  /// POSIX owner user ID
  final pulumi.Input<int> ownerUid;
  /// POSIX permissions mode
  final pulumi.Input<String> permissions;

  /// Creates a new [GetAccessPointRootDirectoryCreationInfo].
  /// [ownerGid] POSIX owner group ID
  /// [ownerUid] POSIX owner user ID
  /// [permissions] POSIX permissions mode
  const GetAccessPointRootDirectoryCreationInfo({
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

  factory GetAccessPointRootDirectoryCreationInfo.fromMap(Map<String, dynamic> map) {
    return GetAccessPointRootDirectoryCreationInfo(
      ownerGid: pulumi.Input.fromValue(map['ownerGid'] as int),
      ownerUid: pulumi.Input.fromValue(map['ownerUid'] as int),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}

