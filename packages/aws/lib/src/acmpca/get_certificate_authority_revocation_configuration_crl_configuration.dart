// ignore_for_file: unused_element, unnecessary_cast

class GetCertificateAuthorityRevocationConfigurationCrlConfiguration {
  /// Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point.
  final String customCname;

  /// Custom path for the CRL in S3.
  final String customPath;

  /// Boolean value that specifies whether certificate revocation lists (CRLs) are enabled.
  final bool enabled;

  /// Number of days until a certificate expires.
  final int expirationInDays;

  /// Name of the S3 bucket that contains the CRL.
  final String s3BucketName;

  /// Whether the CRL is publicly readable or privately held in the CRL Amazon S3 bucket.
  final String s3ObjectAcl;

  /// Creates a new [GetCertificateAuthorityRevocationConfigurationCrlConfiguration].
  /// [customCname] Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point.
  /// [customPath] Custom path for the CRL in S3.
  /// [enabled] Boolean value that specifies whether certificate revocation lists (CRLs) are enabled.
  /// [expirationInDays] Number of days until a certificate expires.
  /// [s3BucketName] Name of the S3 bucket that contains the CRL.
  /// [s3ObjectAcl] Whether the CRL is publicly readable or privately held in the CRL Amazon S3 bucket.
  GetCertificateAuthorityRevocationConfigurationCrlConfiguration({
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

  factory GetCertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCertificateAuthorityRevocationConfigurationCrlConfiguration(
      customCname: map['customCname'] as String,
      customPath: map['customPath'] as String,
      enabled: map['enabled'] as bool,
      expirationInDays: map['expirationInDays'] as int,
      s3BucketName: map['s3BucketName'] as String,
      s3ObjectAcl: map['s3ObjectAcl'] as String,
    );
  }
}
