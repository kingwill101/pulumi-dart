// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drt_access_log_bucket_association_timeouts.dart';

/// {@template pulumi_shield_drt_access_log_bucket_association_drt_access_log_bucket_association_args_doc}
/// The set of arguments for DrtAccessLogBucketAssociation.
/// {@endtemplate}
/// {@macro pulumi_shield_drt_access_log_bucket_association_drt_access_log_bucket_association_args_doc}
class DrtAccessLogBucketAssociationArgs {
  /// The Amazon S3 bucket that contains the logs that you want to share.
  final pulumi.Input<String> logBucket;
  /// The ID of the Role Arn association used for allowing Shield DRT Access.
  final pulumi.Input<String> roleArnAssociationId;
  final pulumi.Input<DrtAccessLogBucketAssociationTimeouts>? timeouts;

  /// Creates a new [DrtAccessLogBucketAssociationArgs].
  /// [logBucket] The Amazon S3 bucket that contains the logs that you want to share.
  /// [roleArnAssociationId] The ID of the Role Arn association used for allowing Shield DRT Access.
  /// [timeouts] Optional.
  DrtAccessLogBucketAssociationArgs({
    required String logBucket,
    required String roleArnAssociationId,
    DrtAccessLogBucketAssociationTimeouts? timeouts,
  }) :
      logBucket = pulumi.Input.asInput<String>(logBucket),
      roleArnAssociationId = pulumi.Input.asInput<String>(roleArnAssociationId),
      timeouts = pulumi.Input.asOptionalInput<DrtAccessLogBucketAssociationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': logBucket,
      'roleArnAssociationId': roleArnAssociationId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DrtAccessLogBucketAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DrtAccessLogBucketAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DrtAccessLogBucketAssociationArgs(
      logBucket: map['logBucket'] as String,
      roleArnAssociationId: map['roleArnAssociationId'] as String,
      timeouts: map['timeouts'] == null ? null : DrtAccessLogBucketAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

