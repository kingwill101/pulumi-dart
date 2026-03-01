// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Logging resources.
class LoggingState {
  /// Name of an existing S3 bucket where the log files are to be stored. Required when `log_destination_type` is `s3`. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  final pulumi.Input<String>? bucketName;
  /// Identifier of the source cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? clusterIdentifier;
  /// Log destination type. Valid values are `s3` and `cloudwatch`.
  final pulumi.Input<String>? logDestinationType;
  /// Collection of exported log types. Required when `log_destination_type` is `cloudwatch`. Valid values are `connectionlog`, `useractivitylog`, and `userlog`.
  final pulumi.Input<List<String>>? logExports;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Prefix applied to the log file names.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Creates a new [LoggingState].
  /// [bucketName] Name of an existing S3 bucket where the log files are to be stored. Required when `log_destination_type` is `s3`. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  /// [clusterIdentifier] Identifier of the source cluster.
  /// [logDestinationType] Log destination type. Valid values are `s3` and `cloudwatch`.
  /// [logExports] Collection of exported log types. Required when `log_destination_type` is `cloudwatch`. Valid values are `connectionlog`, `useractivitylog`, and `userlog`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3KeyPrefix] Prefix applied to the log file names.
  LoggingState({
    pulumi.Output<String>? bucketName,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? logDestinationType,
    pulumi.Output<List<String>>? logExports,
    pulumi.Output<String>? region,
    pulumi.Output<String>? s3KeyPrefix,
  }) :
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      logDestinationType = pulumi.Input.asOptionalInput<String>(logDestinationType),
      logExports = pulumi.Input.asOptionalInput<List<String>>(logExports),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3KeyPrefix = pulumi.Input.asOptionalInput<String>(s3KeyPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'clusterIdentifier': ?clusterIdentifier,
      'logDestinationType': ?logDestinationType,
      'logExports': ?logExports,
      'region': ?region,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory LoggingState.fromMap(Map<String, dynamic> map) {
    return LoggingState(
      bucketName: map['bucketName'] == null ? null : pulumi.Output.create<String>(map['bucketName'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      logDestinationType: map['logDestinationType'] == null ? null : pulumi.Output.create<String>(map['logDestinationType'] as String),
      logExports: map['logExports'] == null ? null : pulumi.Output.create<List<String>>((map['logExports'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : pulumi.Output.create<String>(map['s3KeyPrefix'] as String),
    );
  }
}

