import 'package:pulumi/pulumi.dart';
import '../drt_access_log_bucket_association_timeouts/drt_access_log_bucket_association_timeouts.dart';
import 'drt_access_log_bucket_association_args.dart';

/// Resource for managing an AWS Shield DRT Access Log Bucket Association.
/// Up to 10 log buckets can be associated for DRT Access sharing with the Shield Response Team (SRT).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield DRT access log bucket associations using the `log_bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:shield/drtAccessLogBucketAssociation:DrtAccessLogBucketAssociation example example-bucket
/// ```
class DrtAccessLogBucketAssociation extends CustomResource {
  /// The Amazon S3 bucket that contains the logs that you want to share.
  late final Output<String> logBucket;

  /// The ID of the Role Arn association used for allowing Shield DRT Access.
  late final Output<String> roleArnAssociationId;
  late final Output<DrtAccessLogBucketAssociationTimeouts?> timeouts;

  DrtAccessLogBucketAssociation(
    String name, {
    DrtAccessLogBucketAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:shield/drtAccessLogBucketAssociation:DrtAccessLogBucketAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logBucket = registerOutput<String>('logBucket');
    this.roleArnAssociationId = registerOutput<String>('roleArnAssociationId');
    this.timeouts =
        registerOutput<DrtAccessLogBucketAssociationTimeouts?>('timeouts');
  }
}
