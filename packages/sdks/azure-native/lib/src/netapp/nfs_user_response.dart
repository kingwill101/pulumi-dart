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
  NfsUserResponse({
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
      groupId: map['groupId'] == null ? null : (map['groupId'] as double).input(),
      userId: map['userId'] == null ? null : (map['userId'] as double).input(),
    );
  }
}

