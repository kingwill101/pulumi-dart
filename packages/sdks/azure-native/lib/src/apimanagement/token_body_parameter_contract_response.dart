// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OAuth acquire token request body parameter (www-url-form-encoded).
class TokenBodyParameterContractResponse {
  /// body parameter name.
  final pulumi.Input<String> name;
  /// body parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [TokenBodyParameterContractResponse].
  /// [name] body parameter name.
  /// [value] body parameter value.
  TokenBodyParameterContractResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TokenBodyParameterContractResponse.fromMap(Map<String, dynamic> map) {
    return TokenBodyParameterContractResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

