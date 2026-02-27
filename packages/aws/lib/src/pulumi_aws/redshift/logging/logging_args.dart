// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Logging.
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

  LoggingArgs({
    this.bucketName,
    required this.clusterIdentifier,
    this.logDestinationType,
    this.logExports,
    this.region,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    final logDestinationTypeValue = logDestinationType;
    if (logDestinationTypeValue != null) {
      map['logDestinationType'] = logDestinationTypeValue;
    }
    final logExportsValue = logExports;
    if (logExportsValue != null) {
      map['logExports'] = logExportsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3KeyPrefixValue = s3KeyPrefix;
    if (s3KeyPrefixValue != null) {
      map['s3KeyPrefix'] = s3KeyPrefixValue;
    }
    return map;
  }

  factory LoggingArgs.fromMap(Map<String, dynamic> map) {
    return LoggingArgs(
      bucketName: pulumi.Input.asOptionalInput<String>(map['bucketName']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      logDestinationType:
          pulumi.Input.asOptionalInput<String>(map['logDestinationType']),
      logExports: pulumi.Input.asOptionalInput<List<String>>(map['logExports']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      s3KeyPrefix: pulumi.Input.asOptionalInput<String>(map['s3KeyPrefix']),
    );
  }
}
