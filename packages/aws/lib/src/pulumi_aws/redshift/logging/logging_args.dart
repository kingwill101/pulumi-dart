// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Logging.
class LoggingArgs {
  /// Name of an existing S3 bucket where the log files are to be stored. Required when <span pulumi-lang-nodejs="`logDestinationType`" pulumi-lang-dotnet="`LogDestinationType`" pulumi-lang-go="`logDestinationType`" pulumi-lang-python="`log_destination_type`" pulumi-lang-yaml="`logDestinationType`" pulumi-lang-java="`logDestinationType`">`log_destination_type`</span> is <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions. For more information on the permissions required for the bucket, please read the AWS [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/db-auditing.html#db-auditing-enable-logging)
  final Input<String>? bucketName;

  /// Identifier of the source cluster.
  ///
  /// The following arguments are optional:
  final Input<String> clusterIdentifier;

  /// Log destination type. Valid values are <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span> and <span pulumi-lang-nodejs="`cloudwatch`" pulumi-lang-dotnet="`Cloudwatch`" pulumi-lang-go="`cloudwatch`" pulumi-lang-python="`cloudwatch`" pulumi-lang-yaml="`cloudwatch`" pulumi-lang-java="`cloudwatch`">`cloudwatch`</span>.
  final Input<String>? logDestinationType;

  /// Collection of exported log types. Required when <span pulumi-lang-nodejs="`logDestinationType`" pulumi-lang-dotnet="`LogDestinationType`" pulumi-lang-go="`logDestinationType`" pulumi-lang-python="`log_destination_type`" pulumi-lang-yaml="`logDestinationType`" pulumi-lang-java="`logDestinationType`">`log_destination_type`</span> is <span pulumi-lang-nodejs="`cloudwatch`" pulumi-lang-dotnet="`Cloudwatch`" pulumi-lang-go="`cloudwatch`" pulumi-lang-python="`cloudwatch`" pulumi-lang-yaml="`cloudwatch`" pulumi-lang-java="`cloudwatch`">`cloudwatch`</span>. Valid values are <span pulumi-lang-nodejs="`connectionlog`" pulumi-lang-dotnet="`Connectionlog`" pulumi-lang-go="`connectionlog`" pulumi-lang-python="`connectionlog`" pulumi-lang-yaml="`connectionlog`" pulumi-lang-java="`connectionlog`">`connectionlog`</span>, <span pulumi-lang-nodejs="`useractivitylog`" pulumi-lang-dotnet="`Useractivitylog`" pulumi-lang-go="`useractivitylog`" pulumi-lang-python="`useractivitylog`" pulumi-lang-yaml="`useractivitylog`" pulumi-lang-java="`useractivitylog`">`useractivitylog`</span>, and <span pulumi-lang-nodejs="`userlog`" pulumi-lang-dotnet="`Userlog`" pulumi-lang-go="`userlog`" pulumi-lang-python="`userlog`" pulumi-lang-yaml="`userlog`" pulumi-lang-java="`userlog`">`userlog`</span>.
  final Input<List<String>>? logExports;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Prefix applied to the log file names.
  final Input<String>? s3KeyPrefix;

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
      bucketName: Input.asOptionalInput<String>(map['bucketName']),
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      logDestinationType:
          Input.asOptionalInput<String>(map['logDestinationType']),
      logExports: Input.asOptionalInput<List<String>>(map['logExports']),
      region: Input.asOptionalInput<String>(map['region']),
      s3KeyPrefix: Input.asOptionalInput<String>(map['s3KeyPrefix']),
    );
  }
}
