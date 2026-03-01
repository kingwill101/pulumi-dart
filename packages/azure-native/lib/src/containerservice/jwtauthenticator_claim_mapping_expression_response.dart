// ignore_for_file: unused_element, unnecessary_cast


/// The claim mapping expression for JWTAuthenticator.
class JWTAuthenticatorClaimMappingExpressionResponse {
  /// The CEL expression used to access token claims.
  final String expression;

  /// Creates a new [JWTAuthenticatorClaimMappingExpressionResponse].
  /// [expression] The CEL expression used to access token claims.
  JWTAuthenticatorClaimMappingExpressionResponse({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory JWTAuthenticatorClaimMappingExpressionResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorClaimMappingExpressionResponse(
      expression: map['expression'] as String,
    );
  }
}

