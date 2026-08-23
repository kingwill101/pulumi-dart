// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom error of an application gateway.
class ApplicationGatewayCustomError {
  /// Error page URL of the application gateway custom error.
  final pulumi.Input<String>? customErrorPageUrl;
  /// Status code of the application gateway custom error.
  final pulumi.Input<String>? statusCode;

  /// Creates a new [ApplicationGatewayCustomError].
  /// [customErrorPageUrl] Error page URL of the application gateway custom error.
  /// [statusCode] Status code of the application gateway custom error.
  const ApplicationGatewayCustomError({
    this.customErrorPageUrl,
    this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorPageUrl': ?customErrorPageUrl,
      'statusCode': ?statusCode,
    };
  }

  factory ApplicationGatewayCustomError.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayCustomError(
      customErrorPageUrl: (() { final guardedValue = map['customErrorPageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
