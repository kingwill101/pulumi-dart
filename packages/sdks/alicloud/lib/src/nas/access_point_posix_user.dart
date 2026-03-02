// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPointPosixUser {
  /// The ID of the Posix user group.
  final pulumi.Input<int>? posixGroupId;
  /// The ID of the second user group.
  final pulumi.Input<List<int>>? posixSecondaryGroupIds;
  /// The Posix user ID.
  final pulumi.Input<int>? posixUserId;

  /// Creates a new [AccessPointPosixUser].
  /// [posixGroupId] The ID of the Posix user group.
  /// [posixSecondaryGroupIds] The ID of the second user group.
  /// [posixUserId] The Posix user ID.
  AccessPointPosixUser({
    this.posixGroupId,
    this.posixSecondaryGroupIds,
    this.posixUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'posixGroupId': ?posixGroupId,
      'posixSecondaryGroupIds': ?posixSecondaryGroupIds,
      'posixUserId': ?posixUserId,
    };
  }

  factory AccessPointPosixUser.fromMap(Map<String, dynamic> map) {
    return AccessPointPosixUser(
      posixGroupId: map['posixGroupId'] == null ? null : (map['posixGroupId']! as int).input(),
      posixSecondaryGroupIds: map['posixSecondaryGroupIds'] == null ? null : ((map['posixSecondaryGroupIds']! as List).cast<int>()).input(),
      posixUserId: map['posixUserId'] == null ? null : (map['posixUserId']! as int).input(),
    );
  }
}

