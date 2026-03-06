// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateAuthorityRevocationConfigurationCrlConfiguration {
  /// Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public. Must be less than or equal to 253 characters in length.
  final pulumi.Input<String>? customCname;
  /// Configures a custom path for the CRL in S3. If specified, the CRL will be written to `s3://&lt;s3_bucket_name&gt;/&lt;custom_path&gt;/&lt;crl_file&gt;`. Must conform to the pattern `[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*` and be between 0 and 253 characters in length.
  final pulumi.Input<String>? customPath;
  /// Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  /// Number of days until a certificate expires. Must be between 1 and 5000.
  final pulumi.Input<int>? expirationInDays;
  /// Name of the S3 bucket that contains the CRL. If you do not provide a value for the `custom_cname` argument, the name of your S3 bucket is placed into the CRL Distribution Points extension of the issued certificate. You must specify a bucket policy that allows ACM PCA to write the CRL to your bucket. Must be between 3 and 255 characters in length.
  final pulumi.Input<String>? s3BucketName;
  /// Determines whether the CRL will be publicly readable or privately held in the CRL Amazon S3 bucket. Defaults to `PUBLIC_READ`.
  final pulumi.Input<String>? s3ObjectAcl;

  /// Creates a new [CertificateAuthorityRevocationConfigurationCrlConfiguration].
  /// [customCname] Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public. Must be less than or equal to 253 characters in length.
  /// [customPath] Configures a custom path for the CRL in S3. If specified, the CRL will be written to `s3://&lt;s3_bucket_name&gt;/&lt;custom_path&gt;/&lt;crl_file&gt;`. Must conform to the pattern `[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+(/[-a-zA-Z0-9;?:@&=+$,%_.!~*()']+)*` and be between 0 and 253 characters in length.
  /// [enabled] Boolean value that specifies whether certificate revocation lists (CRLs) are enabled. Defaults to `false`.
  /// [expirationInDays] Number of days until a certificate expires. Must be between 1 and 5000.
  /// [s3BucketName] Name of the S3 bucket that contains the CRL. If you do not provide a value for the `custom_cname` argument, the name of your S3 bucket is placed into the CRL Distribution Points extension of the issued certificate. You must specify a bucket policy that allows ACM PCA to write the CRL to your bucket. Must be between 3 and 255 characters in length.
  /// [s3ObjectAcl] Determines whether the CRL will be publicly readable or privately held in the CRL Amazon S3 bucket. Defaults to `PUBLIC_READ`.
  const CertificateAuthorityRevocationConfigurationCrlConfiguration({
    this.customCname,
    this.customPath,
    this.enabled,
    this.expirationInDays,
    this.s3BucketName,
    this.s3ObjectAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCname': ?customCname,
      'customPath': ?customPath,
      'enabled': ?enabled,
      'expirationInDays': ?expirationInDays,
      's3BucketName': ?s3BucketName,
      's3ObjectAcl': ?s3ObjectAcl,
    };
  }

  factory CertificateAuthorityRevocationConfigurationCrlConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityRevocationConfigurationCrlConfiguration(
      customCname: (() { final guardedValue = map['customCname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPath: (() { final guardedValue = map['customPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expirationInDays: (() { final guardedValue = map['expirationInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3ObjectAcl: (() { final guardedValue = map['s3ObjectAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

