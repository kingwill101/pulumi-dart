// ignore_for_file: unused_element, unnecessary_cast

class GetAccessPointRootDirectoryCreationInfo {
  /// POSIX owner group ID
  final int ownerGid;

  /// POSIX owner user ID
  final int ownerUid;

  /// POSIX permissions mode
  final String permissions;

  /// Creates a new [GetAccessPointRootDirectoryCreationInfo].
  /// [ownerGid] POSIX owner group ID
  /// [ownerUid] POSIX owner user ID
  /// [permissions] POSIX permissions mode
  GetAccessPointRootDirectoryCreationInfo({
    required this.ownerGid,
    required this.ownerUid,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ownerGid'] = ownerGid;
    map['ownerUid'] = ownerUid;
    map['permissions'] = permissions;
    return map;
  }

  factory GetAccessPointRootDirectoryCreationInfo.fromMap(
      Map<String, dynamic> map) {
    return GetAccessPointRootDirectoryCreationInfo(
      ownerGid: map['ownerGid'] as int,
      ownerUid: map['ownerUid'] as int,
      permissions: map['permissions'] as String,
    );
  }
}
