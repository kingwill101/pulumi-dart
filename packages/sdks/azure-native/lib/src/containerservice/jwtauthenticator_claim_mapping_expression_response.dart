// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The claim mapping expression for JWTAuthenticator.
class JWTAuthenticatorClaimMappingExpressionResponse {
  /// The CEL expression used to access token claims.
  final pulumi.Input<String> expression;

  /// Creates a new [JWTAuthenticatorClaimMappingExpressionResponse].
  /// [expression] The CEL expression used to access token claims.
  const JWTAuthenticatorClaimMappingExpressionResponse({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory JWTAuthenticatorClaimMappingExpressionResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorClaimMappingExpressionResponse(
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
