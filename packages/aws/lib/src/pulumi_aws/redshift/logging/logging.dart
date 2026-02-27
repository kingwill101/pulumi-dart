import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_args.dart';

/// Resource for managing an AWS Redshift Logging configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### S3 Destination Type
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Logging using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/logging:Logging example cluster-id-12345678
/// ```
class Logging extends pulumi.CustomResource {
  /// Name of an existing S3 bucket where the log files are to be stored. Required when `log_destination_type` is `s3`. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  late final pulumi.Output<String?> bucketName;

  /// Identifier of the source cluster.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> clusterIdentifier;

  /// Log destination type. Valid values are `s3` and `cloudwatch`.
  late final pulumi.Output<String?> logDestinationType;

  /// Collection of exported log types. Required when `log_destination_type` is `cloudwatch`. Valid values are `connectionlog`, `useractivitylog`, and `userlog`.
  late final pulumi.Output<List<String>?> logExports;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Prefix applied to the log file names.
  late final pulumi.Output<String?> s3KeyPrefix;

  Logging(
    String name, {
    LoggingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/logging:Logging',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucketName = registerOutput<String?>('bucketName');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.logDestinationType = registerOutput<String?>('logDestinationType');
    this.logExports = registerOutput<List<String>?>('logExports');
    this.region = registerOutput<String>('region');
    this.s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
  }
}
