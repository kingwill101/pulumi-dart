// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OriginCustomHeader
class OriginCustomHeaderResponse {
  /// The name of a header that you want CloudFront to send to your origin. For more information, see [Adding Custom Headers to Origin Requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html) in the *Amazon CloudFront Developer Guide*.
  final pulumi.Input<String?>? headerName;
  /// The value for the header that you specified in the ``HeaderName`` field.
  final pulumi.Input<String?>? headerValue;

  /// Creates a new [OriginCustomHeaderResponse].
  /// [headerName] The name of a header that you want CloudFront to send to your origin. For more information, see [Adding Custom Headers to Origin Requests](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html) in the *Amazon CloudFront Developer Guide*.
  /// [headerValue] The value for the header that you specified in the ``HeaderName`` field.
  const OriginCustomHeaderResponse({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory OriginCustomHeaderResponse.fromMap(Map<String, dynamic> map) {
    return OriginCustomHeaderResponse(
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerValue: (() { final guardedValue = map['headerValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
