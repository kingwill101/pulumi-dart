// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The validation rule for JWTAuthenticator.
class JWTAuthenticatorValidationRuleResponse {
  /// The CEL expression used to validate the claim or attribute.
  final pulumi.Input<String> expression;
  /// The validation error message.
  final pulumi.Input<String>? message;

  /// Creates a new [JWTAuthenticatorValidationRuleResponse].
  /// [expression] The CEL expression used to validate the claim or attribute.
  /// [message] The validation error message.
  JWTAuthenticatorValidationRuleResponse({
    required this.expression,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'message': ?message,
    };
  }

  factory JWTAuthenticatorValidationRuleResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorValidationRuleResponse(
      expression: (map['expression'] as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

