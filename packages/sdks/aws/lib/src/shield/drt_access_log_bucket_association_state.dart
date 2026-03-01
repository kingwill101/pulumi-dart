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
    pulumi.Output<String>? logBucket,
    pulumi.Output<String>? roleArnAssociationId,
    pulumi.Output<DrtAccessLogBucketAssociationTimeouts>? timeouts,
  }) :
      logBucket = pulumi.Input.asOptionalInput<String>(logBucket),
      roleArnAssociationId = pulumi.Input.asOptionalInput<String>(roleArnAssociationId),
      timeouts = pulumi.Input.asOptionalInput<DrtAccessLogBucketAssociationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': ?logBucket,
      'roleArnAssociationId': ?roleArnAssociationId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DrtAccessLogBucketAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DrtAccessLogBucketAssociationState.fromMap(Map<String, dynamic> map) {
    return DrtAccessLogBucketAssociationState(
      logBucket: map['logBucket'] == null ? null : pulumi.Output.create<String>(map['logBucket'] as String),
      roleArnAssociationId: map['roleArnAssociationId'] == null ? null : pulumi.Output.create<String>(map['roleArnAssociationId'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DrtAccessLogBucketAssociationTimeouts>(DrtAccessLogBucketAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

