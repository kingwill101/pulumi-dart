// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionLoggingConfig {
  /// Amazon S3 bucket for V1 logging where access logs are stored, for example, `myawslogbucket.s3.amazonaws.com`. V1 logging is enabled when this argument is specified. The bucket must have correct ACL attached with "FULL_CONTROL" permission for "awslogsdelivery" account (Canonical ID: "c4c1ede66af53448b93c283ce9448c4ba468c9432aa01d700d3878632f77d2d0") for log transfer to work.
  final pulumi.Input<String>? bucket;
  /// Whether to include cookies in access logs (default: `false`). This argument applies to both V1 and V2 logging.
  final pulumi.Input<bool>? includeCookies;
  /// Prefix added to the access log file names for V1 logging, for example, `myprefix/`. This argument is effective only when V1 logging is enabled.
  final pulumi.Input<String>? prefix;

  /// Creates a new [DistributionLoggingConfig].
  /// [bucket] Amazon S3 bucket for V1 logging where access logs are stored, for example, `myawslogbucket.s3.amazonaws.com`. V1 logging is enabled when this argument is specified. The bucket must have correct ACL attached with "FULL_CONTROL" permission for "awslogsdelivery" account (Canonical ID: "c4c1ede66af53448b93c283ce9448c4ba468c9432aa01d700d3878632f77d2d0") for log transfer to work.
  /// [includeCookies] Whether to include cookies in access logs (default: `false`). This argument applies to both V1 and V2 logging.
  /// [prefix] Prefix added to the access log file names for V1 logging, for example, `myprefix/`. This argument is effective only when V1 logging is enabled.
  DistributionLoggingConfig({
    this.bucket,
    this.includeCookies,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'includeCookies': ?includeCookies,
      'prefix': ?prefix,
    };
  }

  factory DistributionLoggingConfig.fromMap(Map<String, dynamic> map) {
    return DistributionLoggingConfig(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      includeCookies: map['includeCookies'] == null ? null : (map['includeCookies'] as bool).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
    );
  }
}

