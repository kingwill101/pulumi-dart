// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CustomOriginConfig
class CustomOriginConfigResponse {
  /// The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin listens on.
  final pulumi.Input<int?>? httpPort;
  /// The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the origin listens on.
  final pulumi.Input<int?>? httpsPort;
  /// Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 60 seconds, and the default (if you don't specify otherwise) is 5 seconds. For more information, see [Origin Keep-alive Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginKeepaliveTimeout) in the *Amazon CloudFront Developer Guide*.
  final pulumi.Input<int?>? originKeepaliveTimeout;
  /// Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values are:  +   ``http-only`` – CloudFront always uses HTTP to connect to the origin.  +   ``match-viewer`` – CloudFront connects to the origin using the same protocol that the viewer used to connect to CloudFront.  +   ``https-only`` – CloudFront always uses HTTPS to connect to the origin.
  final pulumi.Input<String?>? originProtocolPolicy;
  /// Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the *origin response timeout*. The minimum timeout is 1 second, the maximum is 60 seconds, and the default (if you don't specify otherwise) is 30 seconds. For more information, see [Origin Response Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout) in the *Amazon CloudFront Developer Guide*.
  final pulumi.Input<int?>? originReadTimeout;
  /// Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over HTTPS. Valid values include ``SSLv3``, ``TLSv1``, ``TLSv1.1``, and ``TLSv1.2``. For more information, see [Minimum Origin SSL Protocol](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols) in the *Amazon CloudFront Developer Guide*.
  final pulumi.Input<List<String>?>? originSSLProtocols;

  /// Creates a new [CustomOriginConfigResponse].
  /// [httpPort] The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin listens on.
  /// [httpsPort] The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the origin listens on.
  /// [originKeepaliveTimeout] Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 60 seconds, and the default (if you don't specify otherwise) is 5 seconds. For more information, see [Origin Keep-alive Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginKeepaliveTimeout) in the *Amazon CloudFront Developer Guide*.
  /// [originProtocolPolicy] Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values are:  +   ``http-only`` – CloudFront always uses HTTP to connect to the origin.  +   ``match-viewer`` – CloudFront connects to the origin using the same protocol that the viewer used to connect to CloudFront.  +   ``https-only`` – CloudFront always uses HTTPS to connect to the origin.
  /// [originReadTimeout] Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the *origin response timeout*. The minimum timeout is 1 second, the maximum is 60 seconds, and the default (if you don't specify otherwise) is 30 seconds. For more information, see [Origin Response Timeout](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout) in the *Amazon CloudFront Developer Guide*.
  /// [originSSLProtocols] Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over HTTPS. Valid values include ``SSLv3``, ``TLSv1``, ``TLSv1.1``, and ``TLSv1.2``. For more information, see [Minimum Origin SSL Protocol](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols) in the *Amazon CloudFront Developer Guide*.
  CustomOriginConfigResponse({
    pulumi.Input<int?>? httpPort,
    pulumi.Input<int?>? httpsPort,
    pulumi.Input<int?>? originKeepaliveTimeout,
    this.originProtocolPolicy,
    pulumi.Input<int?>? originReadTimeout,
    this.originSSLProtocols,
  }) : httpPort = httpPort ?? pulumi.Input.fromValue(80), httpsPort = httpsPort ?? pulumi.Input.fromValue(443), originKeepaliveTimeout = originKeepaliveTimeout ?? pulumi.Input.fromValue(5), originReadTimeout = originReadTimeout ?? pulumi.Input.fromValue(30);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'originKeepaliveTimeout': ?originKeepaliveTimeout,
      'originProtocolPolicy': ?originProtocolPolicy,
      'originReadTimeout': ?originReadTimeout,
      'originSSLProtocols': ?originSSLProtocols,
    };
  }

  factory CustomOriginConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomOriginConfigResponse(
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      originKeepaliveTimeout: (() { final guardedValue = map['originKeepaliveTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      originProtocolPolicy: (() { final guardedValue = map['originProtocolPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originReadTimeout: (() { final guardedValue = map['originReadTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      originSSLProtocols: (() { final guardedValue = map['originSSLProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
