// ignore_for_file: unused_element, unnecessary_cast

class DistributionLoggingConfig {
  /// Amazon S3 bucket for V1 logging where access logs are stored, for example, `myawslogbucket.s3.amazonaws.com`. V1 logging is enabled when this argument is specified. The bucket must have correct ACL attached with "FULL_CONTROL" permission for "awslogsdelivery" account (Canonical ID: "c4c1ede66af53448b93c283ce9448c4ba468c9432aa01d700d3878632f77d2d0") for log transfer to work.
  final String? bucket;

  /// Whether to include cookies in access logs (default: `false`). This argument applies to both V1 and V2 logging.
  final bool? includeCookies;

  /// Prefix added to the access log file names for V1 logging, for example, `myprefix/`. This argument is effective only when V1 logging is enabled.
  final String? prefix;

  DistributionLoggingConfig({
    this.bucket,
    this.includeCookies,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final includeCookiesValue = includeCookies;
    if (includeCookiesValue != null) {
      map['includeCookies'] = includeCookiesValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    return map;
  }

  factory DistributionLoggingConfig.fromMap(Map<String, dynamic> map) {
    return DistributionLoggingConfig(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      includeCookies:
          map['includeCookies'] == null ? null : map['includeCookies'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}
