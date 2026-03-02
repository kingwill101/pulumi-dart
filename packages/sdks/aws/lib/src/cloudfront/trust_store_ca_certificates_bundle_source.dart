// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_ca_certificates_bundle_source_ca_certificates_bundle_s3_location.dart';

class TrustStoreCaCertificatesBundleSource {
  /// Configuration block for the S3 location of the CA certificates bundle. See `ca_certificates_bundle_s3_location` below.
  final pulumi.Input<TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location> caCertificatesBundleS3Location;

  /// Creates a new [TrustStoreCaCertificatesBundleSource].
  /// [caCertificatesBundleS3Location] Configuration block for the S3 location of the CA certificates bundle. See `ca_certificates_bundle_s3_location` below.
  TrustStoreCaCertificatesBundleSource({
    required this.caCertificatesBundleS3Location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificatesBundleS3Location': pulumi.Input.mapInputValue<TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location, Map<String, dynamic>>(caCertificatesBundleS3Location, (value) => value.toMap()),
    };
  }

  factory TrustStoreCaCertificatesBundleSource.fromMap(Map<String, dynamic> map) {
    return TrustStoreCaCertificatesBundleSource(
      caCertificatesBundleS3Location: (TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location.fromMap((map['caCertificatesBundleS3Location'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

