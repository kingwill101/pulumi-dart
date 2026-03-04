// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The claim mapping expression for JWTAuthenticator.
class JWTAuthenticatorClaimMappingExpression {
  /// The CEL expression used to access token claims.
  final pulumi.Input<String> expression;

  /// Creates a new [JWTAuthenticatorClaimMappingExpression].
  /// [expression] The CEL expression used to access token claims.
  JWTAuthenticatorClaimMappingExpression({required this.expression});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': expression};
  }

  factory JWTAuthenticatorClaimMappingExpression.fromMap(
    Map<String, dynamic> map,
  ) {
    return JWTAuthenticatorClaimMappingExpression(
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
