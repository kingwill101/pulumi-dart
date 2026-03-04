// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drt_access_log_bucket_association_timeouts.dart';

/// Input properties used for looking up and filtering DrtAccessLogBucketAssociation resources.
class DrtAccessLogBucketAssociationState {
  /// The Amazon S3 bucket that contains the logs that you want to share.
  final pulumi.Input<String>? logBucket;

  /// The ID of the Role Arn association used for allowing Shield DRT Access.
  final pulumi.Input<String>? roleArnAssociationId;
  final pulumi.Input<DrtAccessLogBucketAssociationTimeouts>? timeouts;

  /// Creates a new [DrtAccessLogBucketAssociationState].
  /// [logBucket] The Amazon S3 bucket that contains the logs that you want to share.
  /// [roleArnAssociationId] The ID of the Role Arn association used for allowing Shield DRT Access.
  /// [timeouts] Optional.
  DrtAccessLogBucketAssociationState({
    this.logBucket,
    this.roleArnAssociationId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': ?logBucket,
      'roleArnAssociationId': ?roleArnAssociationId,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            DrtAccessLogBucketAssociationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory DrtAccessLogBucketAssociationState.fromMap(Map<String, dynamic> map) {
    return DrtAccessLogBucketAssociationState(
      logBucket: (() {
        final guardedValue = map['logBucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArnAssociationId: (() {
        final guardedValue = map['roleArnAssociationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DrtAccessLogBucketAssociationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
