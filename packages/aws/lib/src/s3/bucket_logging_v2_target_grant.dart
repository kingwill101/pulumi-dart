// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_logging_v2_target_grant_grantee.dart';

class BucketLoggingV2TargetGrant {
  /// Configuration block for the person being granted permissions. See below.
  final BucketLoggingV2TargetGrantGrantee grantee;

  /// Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `READ`, `WRITE`.
  final String permission;

  /// Creates a new [BucketLoggingV2TargetGrant].
  /// [grantee] Configuration block for the person being granted permissions. See below.
  /// [permission] Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `READ`, `WRITE`.
  BucketLoggingV2TargetGrant({required this.grantee, required this.permission});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': grantee.toMap(),
      'permission': permission,
    };
  }

  factory BucketLoggingV2TargetGrant.fromMap(Map<String, dynamic> map) {
    return BucketLoggingV2TargetGrant(
      grantee: BucketLoggingV2TargetGrantGrantee.fromMap(
        (map['grantee'] as Map).cast<String, dynamic>(),
      ),
      permission: map['permission'] as String,
    );
  }
}
