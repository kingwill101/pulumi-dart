// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNameMutualTlsAuthentication {
  /// Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, `s3://bucket-name/key-name`. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version.
  final pulumi.Input<String> truststoreUri;
  /// Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.
  final pulumi.Input<String?>? truststoreVersion;

  /// Creates a new [DomainNameMutualTlsAuthentication].
  /// [truststoreUri] Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example, `s3://bucket-name/key-name`. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version.
  /// [truststoreVersion] Version of the S3 object that contains the truststore. To specify a version, you must have versioning enabled for the S3 bucket.
  const DomainNameMutualTlsAuthentication({
    required this.truststoreUri,
    this.truststoreVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'truststoreUri': truststoreUri,
      'truststoreVersion': ?truststoreVersion,
    };
  }

  factory DomainNameMutualTlsAuthentication.fromMap(Map<String, dynamic> map) {
    return DomainNameMutualTlsAuthentication(
      truststoreUri: pulumi.Input.fromValue(map['truststoreUri'] as String),
      truststoreVersion: (() { final guardedValue = map['truststoreVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
