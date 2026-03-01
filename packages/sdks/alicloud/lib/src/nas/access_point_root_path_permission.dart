// ignore_for_file: unused_element, unnecessary_cast


class AccessPointRootPathPermission {
  /// The ID of the primary user group.
  final int? ownerGroupId;
  /// The owner user ID.
  final int? ownerUserId;
  /// The Portable Operating System Interface for UNIX (POSIX) permission.
  final String? permission;

  /// Creates a new [AccessPointRootPathPermission].
  /// [ownerGroupId] The ID of the primary user group.
  /// [ownerUserId] The owner user ID.
  /// [permission] The Portable Operating System Interface for UNIX (POSIX) permission.
  AccessPointRootPathPermission({
    this.ownerGroupId,
    this.ownerUserId,
    this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerGroupId': ?ownerGroupId,
      'ownerUserId': ?ownerUserId,
      'permission': ?permission,
    };
  }

  factory AccessPointRootPathPermission.fromMap(Map<String, dynamic> map) {
    return AccessPointRootPathPermission(
      ownerGroupId: map['ownerGroupId'] == null ? null : map['ownerGroupId'] as int,
      ownerUserId: map['ownerUserId'] == null ? null : map['ownerUserId'] as int,
      permission: map['permission'] == null ? null : map['permission'] as String,
    );
  }
}

