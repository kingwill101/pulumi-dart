// ignore_for_file: unused_element, unnecessary_cast


/// The extra claim mapping expression for JWTAuthenticator.
class JWTAuthenticatorExtraClaimMappingExpressionResponse {
  /// The key of the extra attribute.
  final String key;
  /// The CEL expression used to extract the value of the extra attribute.
  final String valueExpression;

  /// Creates a new [JWTAuthenticatorExtraClaimMappingExpressionResponse].
  /// [key] The key of the extra attribute.
  /// [valueExpression] The CEL expression used to extract the value of the extra attribute.
  JWTAuthenticatorExtraClaimMappingExpressionResponse({
    required this.key,
    required this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'valueExpression': valueExpression,
    };
  }

  factory JWTAuthenticatorExtraClaimMappingExpressionResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorExtraClaimMappingExpressionResponse(
      key: map['key'] as String,
      valueExpression: map['valueExpression'] as String,
    );
  }
}

