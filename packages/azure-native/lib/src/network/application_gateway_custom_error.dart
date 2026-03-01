// ignore_for_file: unused_element, unnecessary_cast


/// Custom error of an application gateway.
class ApplicationGatewayCustomError {
  /// Error page URL of the application gateway custom error.
  final String? customErrorPageUrl;
  /// Status code of the application gateway custom error.
  final String? statusCode;

  /// Creates a new [ApplicationGatewayCustomError].
  /// [customErrorPageUrl] Error page URL of the application gateway custom error.
  /// [statusCode] Status code of the application gateway custom error.
  ApplicationGatewayCustomError({
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
      customErrorPageUrl: map['customErrorPageUrl'] == null ? null : map['customErrorPageUrl'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
    );
  }
}

