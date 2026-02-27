// ignore_for_file: unused_element, unnecessary_cast

class DomainNameMutualTlsAuthenticationApigatewayv2 {
  /// Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, `s3://bucket-name/key-name`. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version.
  final String truststoreUri;

  /// Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.
  final String? truststoreVersion;

  DomainNameMutualTlsAuthenticationApigatewayv2({
    required this.truststoreUri,
    this.truststoreVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['truststoreUri'] = truststoreUri;
    final truststoreVersionValue = truststoreVersion;
    if (truststoreVersionValue != null) {
      map['truststoreVersion'] = truststoreVersionValue;
    }
    return map;
  }

  factory DomainNameMutualTlsAuthenticationApigatewayv2.fromMap(
      Map<String, dynamic> map) {
    return DomainNameMutualTlsAuthenticationApigatewayv2(
      truststoreUri: map['truststoreUri'] as String,
      truststoreVersion: map['truststoreVersion'] == null
          ? null
          : map['truststoreVersion'] as String,
    );
  }
}
