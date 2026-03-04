// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The extra claim mapping expression for JWTAuthenticator.
class JWTAuthenticatorExtraClaimMappingExpression {
  /// The key of the extra attribute.
  final pulumi.Input<String> key;

  /// The CEL expression used to extract the value of the extra attribute.
  final pulumi.Input<String> valueExpression;

  /// Creates a new [JWTAuthenticatorExtraClaimMappingExpression].
  /// [key] The key of the extra attribute.
  /// [valueExpression] The CEL expression used to extract the value of the extra attribute.
  JWTAuthenticatorExtraClaimMappingExpression({
    required this.key,
    required this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'valueExpression': valueExpression};
  }

  factory JWTAuthenticatorExtraClaimMappingExpression.fromMap(
    Map<String, dynamic> map,
  ) {
    return JWTAuthenticatorExtraClaimMappingExpression(
      key: pulumi.Input.fromValue(map['key'] as String),
      valueExpression: pulumi.Input.fromValue(map['valueExpression'] as String),
    );
  }
}
