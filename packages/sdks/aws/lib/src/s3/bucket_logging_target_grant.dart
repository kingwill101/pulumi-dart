// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_target_grant_grantee.dart';

class BucketLoggingTargetGrant {
  /// Configuration block for the person being granted permissions. See below.
  final pulumi.Input<BucketLoggingTargetGrantGrantee> grantee;
  /// Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `READ`, `WRITE`.
  final pulumi.Input<String> permission;

  /// Creates a new [BucketLoggingTargetGrant].
  /// [grantee] Configuration block for the person being granted permissions. See below.
  /// [permission] Logging permissions assigned to the grantee for the bucket. Valid values: `FULL_CONTROL`, `READ`, `WRITE`.
  const BucketLoggingTargetGrant({
    required this.grantee,
    required this.permission,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantee': pulumi.Input.mapInputValue<BucketLoggingTargetGrantGrantee, Map<String, dynamic>>(grantee, (value) => value.toMap()),
      'permission': permission,
    };
  }

  factory BucketLoggingTargetGrant.fromMap(Map<String, dynamic> map) {
    return BucketLoggingTargetGrant(
      grantee: pulumi.Input.fromValue(BucketLoggingTargetGrantGrantee.fromMap((map['grantee']! as Map).cast<String, dynamic>())),
      permission: pulumi.Input.fromValue(map['permission'] as String),
    );
  }
}

