// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location {
  /// S3 bucket name containing the CA certificates bundle.
  final pulumi.Input<String> bucket;
  /// S3 object key for the CA certificates bundle.
  final pulumi.Input<String> key;
  /// AWS region of the S3 bucket.
  final pulumi.Input<String> region;
  /// S3 object version ID for the CA certificates bundle.
  final pulumi.Input<String>? version;

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
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'region': region,
      'version': ?version,
    };
  }

  factory TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location.fromMap(Map<String, dynamic> map) {
    return TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location(
      bucket: (map['bucket'] as String).input(),
      key: (map['key'] as String).input(),
      region: (map['region'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

