// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ViewerCertificate
class ViewerCertificateResponse {
  /// In CloudFormation, this field name is ``AcmCertificateArn``. Note the different capitalization.  If the distribution uses ``Aliases`` (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in [(ACM)](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html), provide the Amazon Resource Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US East (N. Virginia) Region (``us-east-1``). If you specify an ACM certificate ARN, you must also specify values for ``MinimumProtocolVersion`` and ``SSLSupportMethod``. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)
  final pulumi.Input<String>? acmCertificateArn;
  /// If the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net``, set this field to ``true``. If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), omit this field and specify values for the following fields:  +   ``AcmCertificateArn`` or ``IamCertificateId`` (specify a value for one, not both)   +   ``MinimumProtocolVersion``   +   ``SslSupportMethod``
  final pulumi.Input<bool>? cloudFrontDefaultCertificate;
  /// In CloudFormation, this field name is ``IamCertificateId``. Note the different capitalization.  If the distribution uses ``Aliases`` (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in [(IAM)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html), provide the ID of the IAM certificate. If you specify an IAM certificate ID, you must also specify values for ``MinimumProtocolVersion`` and ``SSLSupportMethod``. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)
  final pulumi.Input<String>? iamCertificateId;
  /// If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), specify the security policy that you want CloudFront to use for HTTPS connections with viewers. The security policy determines two settings:  +  The minimum SSL/TLS protocol that CloudFront can use to communicate with viewers.  +  The ciphers that CloudFront can use to encrypt the content that it returns to viewers.   For more information, see [Security Policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy) and [Supported Protocols and Ciphers Between Viewers and CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers) in the *Amazon CloudFront Developer Guide*.  On the CloudFront console, this setting is called *Security Policy*.  When you're using SNI only (you set ``SSLSupportMethod`` to ``sni-only``), you must specify ``TLSv1`` or higher. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.) If the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net`` (you set ``CloudFrontDefaultCertificate`` to ``true``), CloudFront automatically sets the security policy to ``TLSv1`` regardless of the value that you set here.
  final pulumi.Input<String>? minimumProtocolVersion;
  /// In CloudFormation, this field name is ``SslSupportMethod``. Note the different capitalization.  If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), specify which viewers the distribution accepts HTTPS connections from.  +   ``sni-only`` – The distribution accepts HTTPS connections from only viewers that support [server name indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication). This is recommended. Most browsers and clients support SNI.  +   ``vip`` – The distribution accepts HTTPS connections from all viewers including those that don't support SNI. This is not recommended, and results in additional monthly charges from CloudFront.  +   ``static-ip`` - Do not specify this value unless your distribution has been enabled for this feature by the CloudFront team. If you have a use case that requires static IP addresses for a distribution, contact CloudFront through the [Center](https://aws.amazon.com/support/home).   If the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net``, don't set a value for this field.
  final pulumi.Input<String>? sslSupportMethod;

  /// Creates a new [ViewerCertificateResponse].
  /// [acmCertificateArn] In CloudFormation, this field name is ``AcmCertificateArn``. Note the different capitalization.  If the distribution uses ``Aliases`` (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in [(ACM)](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html), provide the Amazon Resource Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US East (N. Virginia) Region (``us-east-1``). If you specify an ACM certificate ARN, you must also specify values for ``MinimumProtocolVersion`` and ``SSLSupportMethod``. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)
  /// [cloudFrontDefaultCertificate] If the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net``, set this field to ``true``. If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), omit this field and specify values for the following fields:  +   ``AcmCertificateArn`` or ``IamCertificateId`` (specify a value for one, not both)   +   ``MinimumProtocolVersion``   +   ``SslSupportMethod``
  /// [iamCertificateId] In CloudFormation, this field name is ``IamCertificateId``. Note the different capitalization.  If the distribution uses ``Aliases`` (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in [(IAM)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html), provide the ID of the IAM certificate. If you specify an IAM certificate ID, you must also specify values for ``MinimumProtocolVersion`` and ``SSLSupportMethod``. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.)
  /// [minimumProtocolVersion] If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), specify the security policy that you want CloudFront to use for HTTPS connections with viewers. The security policy determines two settings:  +  The minimum SSL/TLS protocol that CloudFront can use to communicate with viewers.  +  The ciphers that CloudFront can use to encrypt the content that it returns to viewers.   For more information, see [Security Policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy) and [Supported Protocols and Ciphers Between Viewers and CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers) in the *Amazon CloudFront Developer Guide*.  On the CloudFront console, this setting is called *Security Policy*.  When you're using SNI only (you set ``SSLSupportMethod`` to ``sni-only``), you must specify ``TLSv1`` or higher. (In CloudFormation, the field name is ``SslSupportMethod``. Note the different capitalization.) If the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net`` (you set ``CloudFrontDefaultCertificate`` to ``true``), CloudFront automatically sets the security policy to ``TLSv1`` regardless of the value that you set here.
  /// [sslSupportMethod] In CloudFormation, this field name is ``SslSupportMethod``. Note the different capitalization.  If the distribution uses ``Aliases`` (alternate domain names or CNAMEs), specify which viewers the distribution accepts HTTPS connections from.  +   ``sni-only`` – The distribution accepts HTTPS connections from only viewers that support [server name indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication). This is recommended. Most browsers and clients support SNI.  +   ``vip`` – The distribution accepts HTTPS connections from all viewers including those that don't support SNI. This is not recommended, and results in additional monthly charges from CloudFront.  +   ``static-ip`` - Do not specify this value unless your distribution has been enabled for this feature by the CloudFront team. If you have a use case that requires static IP addresses for a distribution, contact CloudFront through the [Center](https://aws.amazon.com/support/home).   If the distribution uses the CloudFront domain name such as ``d111111abcdef8.cloudfront.net``, don't set a value for this field.
  ViewerCertificateResponse({
    this.acmCertificateArn,
    this.cloudFrontDefaultCertificate,
    this.iamCertificateId,
    this.minimumProtocolVersion,
    this.sslSupportMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acmCertificateArn': ?acmCertificateArn,
      'cloudFrontDefaultCertificate': ?cloudFrontDefaultCertificate,
      'iamCertificateId': ?iamCertificateId,
      'minimumProtocolVersion': ?minimumProtocolVersion,
      'sslSupportMethod': ?sslSupportMethod,
    };
  }

  factory ViewerCertificateResponse.fromMap(Map<String, dynamic> map) {
    return ViewerCertificateResponse(
      acmCertificateArn: map['acmCertificateArn'] == null ? null : (map['acmCertificateArn'] as String).input(),
      cloudFrontDefaultCertificate: map['cloudFrontDefaultCertificate'] == null ? null : (map['cloudFrontDefaultCertificate'] as bool).input(),
      iamCertificateId: map['iamCertificateId'] == null ? null : (map['iamCertificateId'] as String).input(),
      minimumProtocolVersion: map['minimumProtocolVersion'] == null ? null : (map['minimumProtocolVersion'] as String).input(),
      sslSupportMethod: map['sslSupportMethod'] == null ? null : (map['sslSupportMethod'] as String).input(),
    );
  }
}

