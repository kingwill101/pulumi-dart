// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The effective NFS User ID and Group ID when accessing the volume data.
class NfsUserResponse {
  /// The NFS user's GID
  final pulumi.Input<double>? groupId;
  /// The NFS user's UID
  final pulumi.Input<double>? userId;

  /// Creates a new [NfsUserResponse].
  /// [groupId] The NFS user's GID
  /// [userId] The NFS user's UID
  const NfsUserResponse({
    this.groupId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'userId': ?userId,
    };
  }

  factory NfsUserResponse.fromMap(Map<String, dynamic> map) {
    return NfsUserResponse(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
