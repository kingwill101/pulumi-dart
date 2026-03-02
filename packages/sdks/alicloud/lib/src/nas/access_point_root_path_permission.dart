// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointRootPathPermission {
  /// The ID of the primary user group.
  final pulumi.Input<int>? ownerGroupId;
  /// The owner user ID.
  final pulumi.Input<int>? ownerUserId;
  /// The Portable Operating System Interface for UNIX (POSIX) permission.
  final pulumi.Input<String>? permission;

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
      ownerGroupId: map['ownerGroupId'] == null ? null : (map['ownerGroupId']! as int).input(),
      ownerUserId: map['ownerUserId'] == null ? null : (map['ownerUserId']! as int).input(),
      permission: map['permission'] == null ? null : (map['permission']! as String).input(),
    );
  }
}

