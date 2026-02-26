// ignore_for_file: unused_element, unnecessary_cast

import '../trust_store_ca_certificates_bundle_source_ca_certificates_bundle_s3_location/trust_store_ca_certificates_bundle_source_ca_certificates_bundle_s3_location.dart';

class TrustStoreCaCertificatesBundleSource {
  /// Configuration block for the S3 location of the CA certificates bundle. See <span pulumi-lang-nodejs="`caCertificatesBundleS3Location`" pulumi-lang-dotnet="`CaCertificatesBundleS3Location`" pulumi-lang-go="`caCertificatesBundleS3Location`" pulumi-lang-python="`ca_certificates_bundle_s3_location`" pulumi-lang-yaml="`caCertificatesBundleS3Location`" pulumi-lang-java="`caCertificatesBundleS3Location`">`ca_certificates_bundle_s3_location`</span> below.
  final TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location
      caCertificatesBundleS3Location;

  TrustStoreCaCertificatesBundleSource({
    required this.caCertificatesBundleS3Location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificatesBundleS3Location'] =
        caCertificatesBundleS3Location.toMap();
    return map;
  }

  factory TrustStoreCaCertificatesBundleSource.fromMap(
      Map<String, dynamic> map) {
    return TrustStoreCaCertificatesBundleSource(
      caCertificatesBundleS3Location:
          TrustStoreCaCertificatesBundleSourceCaCertificatesBundleS3Location
              .fromMap((map['caCertificatesBundleS3Location'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
