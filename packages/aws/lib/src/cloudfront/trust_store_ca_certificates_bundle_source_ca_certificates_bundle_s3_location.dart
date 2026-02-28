// ignore_for_file: unused_element, unnecessary_cast

class TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location {
  /// S3 bucket name containing the CA certificates bundle.
  final String bucket;

  /// S3 object key for the CA certificates bundle.
  final String key;

  /// AWS region of the S3 bucket.
  final String region;

  /// S3 object version ID for the CA certificates bundle.
  final String? version;

  /// Creates a new [TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location].
  /// [bucket] S3 bucket name containing the CA certificates bundle.
  /// [key] S3 object key for the CA certificates bundle.
  /// [region] AWS region of the S3 bucket.
  /// [version] S3 object version ID for the CA certificates bundle.
  TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location({
    required this.bucket,
    required this.key,
    required this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['key'] = key;
    map['region'] = region;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location.fromMap(
      Map<String, dynamic> map) {
    return TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location(
      bucket: map['bucket'] as String,
      key: map['key'] as String,
      region: map['region'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
