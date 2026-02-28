// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_logging_target_grant_grantee.dart';

class BucketLoggingTargetGrant {
  /// Configuration block for the person being granted permissions. See below.
  final BucketLoggingTargetGrantGrantee grantee;

  /// Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `READ`, `WRITE`.
  final String permission;

  /// Creates a new [BucketLoggingTargetGrant].
  /// [grantee] Configuration block for the person being granted permissions. See below.
  /// [permission] Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `READ`, `WRITE`.
  BucketLoggingTargetGrant({
    required this.grantee,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grantee'] = grantee.toMap();
    map['permission'] = permission;
    return map;
  }

  factory BucketLoggingTargetGrant.fromMap(Map<String, dynamic> map) {
    return BucketLoggingTargetGrant(
      grantee: BucketLoggingTargetGrantGrantee.fromMap(
          (map['grantee'] as Map).cast<String, dynamic>()),
      permission: map['permission'] as String,
    );
  }
}
