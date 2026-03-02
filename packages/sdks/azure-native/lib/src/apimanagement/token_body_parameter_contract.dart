// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OAuth acquire token request body parameter (www-url-form-encoded).
class TokenBodyParameterContract {
  /// body parameter name.
  final pulumi.Input<String> name;
  /// body parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [TokenBodyParameterContract].
  /// [name] body parameter name.
  /// [value] body parameter value.
  TokenBodyParameterContract({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TokenBodyParameterContract.fromMap(Map<String, dynamic> map) {
    return TokenBodyParameterContract(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

