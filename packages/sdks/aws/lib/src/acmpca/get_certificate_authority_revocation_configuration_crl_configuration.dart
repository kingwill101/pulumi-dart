// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateAuthorityRevocationConfigurationCrlConfiguration {
  /// Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point.
  final pulumi.Input<String> customCname;
  /// Custom path for the CRL in S3.
  final pulumi.Input<String> customPath;
  /// Boolean value that specifies whether a custom OCSP responder is enabled.
  final pulumi.Input<bool> enabled;
  /// Number of days until a certificate expires.
  final pulumi.Input<int> expirationInDays;
  /// Name of the S3 bucket that contains the CRL.
  final pulumi.Input<String> s3BucketName;
  /// Whether the CRL is publicly readable or privately held in the CRL Amazon S3 bucket.
  final pulumi.Input<String> s3ObjectAcl;

  /// Creates a new [GetCertificateAuthorityRevocationConfigurationCrlConfiguration].
  /// [customCname] Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point.
  /// [customPath] Custom path for the CRL in S3.
  /// [enabled] Boolean value that specifies whether a custom OCSP responder is enabled.
  /// [expirationInDays] Number of days until a certificate expires.
  /// [s3BucketName] Name of the S3 bucket that contains the CRL.
  /// [s3ObjectAcl] Whether the CRL is publicly readable or privately held in the CRL Amazon S3 bucket.
  const GetCertificateAuthorityRevocationConfigurationCrlConfiguration({
    required this.customCname,
    required this.customPath,
    required this.enabled,
    required this.expirationInDays,
    required this.s3BucketName,
    required this.s3ObjectAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCname': customCname,
      'customPath': customPath,
      'enabled': enabled,
      'expirationInDays': expirationInDays,
      's3BucketName': s3BucketName,
      's3ObjectAcl': s3ObjectAcl,
    };
  }

  factory GetCertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityRevocationConfigurationCrlConfiguration(
      customCname: pulumi.Input.fromValue(map['customCname'] as String),
      customPath: pulumi.Input.fromValue(map['customPath'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expirationInDays: pulumi.Input.fromValue(map['expirationInDays'] as int),
      s3BucketName: pulumi.Input.fromValue(map['s3BucketName'] as String),
      s3ObjectAcl: pulumi.Input.fromValue(map['s3ObjectAcl'] as String),
    );
  }
}
