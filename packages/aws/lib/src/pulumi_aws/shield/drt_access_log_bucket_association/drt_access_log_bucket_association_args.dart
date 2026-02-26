// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../drt_access_log_bucket_association_timeouts/drt_access_log_bucket_association_timeouts.dart';

/// The set of arguments for DrtAccessLogBucketAssociation.
class DrtAccessLogBucketAssociationArgs {
  /// The Amazon S3 bucket that contains the logs that you want to share.
  final Input<String> logBucket;

  /// The ID of the Role Arn association used for allowing Shield DRT Access.
  final Input<String> roleArnAssociationId;
  final Input<DrtAccessLogBucketAssociationTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<
          DrtAccessLogBucketAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DrtAccessLogBucketAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DrtAccessLogBucketAssociationArgs(
      logBucket: Input.asInput<String>(map['logBucket']),
      roleArnAssociationId: Input.asInput<String>(map['roleArnAssociationId']),
      timeouts: Input.asOptionalInput<DrtAccessLogBucketAssociationTimeouts>(
          map['timeouts']),
    );
  }
}
