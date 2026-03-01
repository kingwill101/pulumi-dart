// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayHttpListenerCustomErrorConfiguration {
  /// Error page URL of the application gateway custom error.
  final String customErrorPageUrl;
  /// The ID of the Rewrite Rule Set
  final String id;
  /// Status code of the application gateway custom error.
  final String statusCode;

  /// Creates a new [GetApplicationGatewayHttpListenerCustomErrorConfiguration].
  /// [customErrorPageUrl] Error page URL of the application gateway custom error.
  /// [id] The ID of the Rewrite Rule Set
  /// [statusCode] Status code of the application gateway custom error.
  GetApplicationGatewayHttpListenerCustomErrorConfiguration({
    required this.customErrorPageUrl,
    required this.id,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorPageUrl': customErrorPageUrl,
      'id': id,
      'statusCode': statusCode,
    };
  }

  factory GetApplicationGatewayHttpListenerCustomErrorConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayHttpListenerCustomErrorConfiguration(
      customErrorPageUrl: map['customErrorPageUrl'] as String,
      id: map['id'] as String,
      statusCode: map['statusCode'] as String,
    );
  }
}

