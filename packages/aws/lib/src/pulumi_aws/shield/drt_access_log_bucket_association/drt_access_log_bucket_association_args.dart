// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../drt_access_log_bucket_association_timeouts/drt_access_log_bucket_association_timeouts.dart';

/// The set of arguments for DrtAccessLogBucketAssociation.
class DrtAccessLogBucketAssociationArgs {
  /// The Amazon S3 bucket that contains the logs that you want to share.
  final pulumi.Input<String> logBucket;

  /// The ID of the Role Arn association used for allowing Shield DRT Access.
  final pulumi.Input<String> roleArnAssociationId;
  final pulumi.Input<DrtAccessLogBucketAssociationTimeouts>? timeouts;

  DrtAccessLogBucketAssociationArgs({
    required this.logBucket,
    required this.roleArnAssociationId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logBucket'] = logBucket;
    map['roleArnAssociationId'] = roleArnAssociationId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DrtAccessLogBucketAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DrtAccessLogBucketAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DrtAccessLogBucketAssociationArgs(
      logBucket: pulumi.Input.asInput<String>(map['logBucket']),
      roleArnAssociationId:
          pulumi.Input.asInput<String>(map['roleArnAssociationId']),
      timeouts:
          pulumi.Input.asOptionalInput<DrtAccessLogBucketAssociationTimeouts>(
              map['timeouts']),
    );
  }
}
