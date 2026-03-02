// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_logging_logging_args_doc}
/// The set of arguments for Logging.
/// {@endtemplate}
/// {@macro pulumi_redshift_logging_logging_args_doc}
class LoggingArgs {
  /// Name of an existing S3 bucket where the log files are to be stored. Required when `log_destination_type` is `s3`. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  final pulumi.Input<String>? bucketName;
  /// Identifier of the source cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> clusterIdentifier;
  /// Log destination type. Valid values are `s3` and `cloudwatch`.
  final pulumi.Input<String>? logDestinationType;
  /// Collection of exported log types. Required when `log_destination_type` is `cloudwatch`. Valid values are `connectionlog`, `useractivitylog`, and `userlog`.
  final pulumi.Input<List<String>>? logExports;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Prefix applied to the log file names.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [LoggingArgs].
  /// [bucketName] Name of an existing S3 bucket where the log files are to be stored. Required when `log_destination_type` is `s3`. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  /// [clusterIdentifier] Identifier of the source cluster.
  /// [logDestinationType] Log destination type. Valid values are `s3` and `cloudwatch`.
  /// [logExports] Collection of exported log types. Required when `log_destination_type` is `cloudwatch`. Valid values are `connectionlog`, `useractivitylog`, and `userlog`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3KeyPrefix] Prefix applied to the log file names.
  LoggingArgs({
    this.bucketName,
    required this.clusterIdentifier,
    this.logDestinationType,
    this.logExports,
    this.region,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'clusterIdentifier': clusterIdentifier,
      'logDestinationType': ?logDestinationType,
      'logExports': ?logExports,
      'region': ?region,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory LoggingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingArgs(
      bucketName: map['bucketName'] == null ? null : ((map['bucketName'] as String).input()).input(),
      clusterIdentifier: (map['clusterIdentifier'] as String).input(),
      logDestinationType: map['logDestinationType'] == null ? null : ((map['logDestinationType'] as String).input()).input(),
      logExports: map['logExports'] == null ? null : (((map['logExports'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : ((map['s3KeyPrefix'] as String).input()).input(),
    );
  }
}

