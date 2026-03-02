// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The validation rule for JWTAuthenticator.
class JWTAuthenticatorValidationRule {
  /// The CEL expression used to validate the claim or attribute.
  final pulumi.Input<String> expression;
  /// The validation error message.
  final pulumi.Input<String>? message;

  /// Creates a new [JWTAuthenticatorValidationRule].
  /// [expression] The CEL expression used to validate the claim or attribute.
  /// [message] The validation error message.
  JWTAuthenticatorValidationRule({
    required this.expression,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'message': ?message,
    };
  }

  factory JWTAuthenticatorValidationRule.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorValidationRule(
      expression: (map['expression'] as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

