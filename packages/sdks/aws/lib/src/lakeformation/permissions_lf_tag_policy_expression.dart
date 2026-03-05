// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionsLfTagPolicyExpression {
  /// The key-name of an LF-Tag.
  final pulumi.Input<String> key;
  /// A list of possible values of an LF-Tag.
  final pulumi.Input<List<String>> values;

  /// Creates a new [PermissionsLfTagPolicyExpression].
  /// [key] The key-name of an LF-Tag.
  /// [values] A list of possible values of an LF-Tag.
  PermissionsLfTagPolicyExpression({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory PermissionsLfTagPolicyExpression.fromMap(Map<String, dynamic> map) {
    return PermissionsLfTagPolicyExpression(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

