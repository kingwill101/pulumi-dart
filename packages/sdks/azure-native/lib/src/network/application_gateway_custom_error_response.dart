// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom error of an application gateway.
class ApplicationGatewayCustomErrorResponse {
  /// Error page URL of the application gateway custom error.
  final pulumi.Input<String>? customErrorPageUrl;
  /// Status code of the application gateway custom error.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [ApplicationGatewayCustomErrorResponse].
  /// [customErrorPageUrl] Error page URL of the application gateway custom error.
  /// [statusCode] Status code of the application gateway custom error.
  ApplicationGatewayCustomErrorResponse({
    this.customErrorPageUrl,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorPageUrl': ?customErrorPageUrl,
      'statusCode': ?statusCode,
    };
  }

  factory ApplicationGatewayCustomErrorResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayCustomErrorResponse(
      customErrorPageUrl: map['customErrorPageUrl'] == null ? null : (map['customErrorPageUrl'] as String).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode'] as String).input(),
    );
  }
}

