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
      posixGroupId: (() { final guardedValue = map['posixGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      posixSecondaryGroupIds: (() { final guardedValue = map['posixSecondaryGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      posixUserId: (() { final guardedValue = map['posixUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

