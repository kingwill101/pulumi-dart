// ignore_for_file: unused_element, unnecessary_cast


/// The extra claim mapping expression for JWTAuthenticator.
class JWTAuthenticatorExtraClaimMappingExpression {
  /// The key of the extra attribute.
  final String key;
  /// The CEL expression used to extract the value of the extra attribute.
  final String valueExpression;

  /// Creates a new [JWTAuthenticatorExtraClaimMappingExpression].
  /// [key] The key of the extra attribute.
  /// [valueExpression] The CEL expression used to extract the value of the extra attribute.
  JWTAuthenticatorExtraClaimMappingExpression({
    required this.key,
    required this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'valueExpression': valueExpression,
    };
  }

  factory JWTAuthenticatorExtraClaimMappingExpression.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorExtraClaimMappingExpression(
      key: map['key'] as String,
      valueExpression: map['valueExpression'] as String,
    );
  }
}

