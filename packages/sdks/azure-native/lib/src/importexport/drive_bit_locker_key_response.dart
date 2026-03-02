// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BitLocker recovery key or password to the specified drive
class DriveBitLockerKeyResponse {
  /// BitLocker recovery key or password
  final pulumi.Input<String>? bitLockerKey;
  /// Drive ID
  final pulumi.Input<String>? driveId;

  /// Creates a new [DriveBitLockerKeyResponse].
  /// [bitLockerKey] BitLocker recovery key or password
  /// [driveId] Drive ID
  DriveBitLockerKeyResponse({
    this.bitLockerKey,
    this.driveId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitLockerKey': ?bitLockerKey,
      'driveId': ?driveId,
    };
  }

  factory DriveBitLockerKeyResponse.fromMap(Map<String, dynamic> map) {
    return DriveBitLockerKeyResponse(
      bitLockerKey: map['bitLockerKey'] == null ? null : (map['bitLockerKey']! as String).input(),
      driveId: map['driveId'] == null ? null : (map['driveId']! as String).input(),
    );
  }
}

