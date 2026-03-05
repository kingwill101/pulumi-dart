// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Data Factory secure string definition. The string value will be masked with asterisks '*' during Get or List API calls.
class SecureString {
  /// Type of the secret.
  /// Expected value is 'SecureString'.
  final pulumi.Input<String> type;
  /// Value of secure string.
  final pulumi.Input<String> value;

  /// Creates a new [SecureString].
  /// [type] Type of the secret.
  /// [value] Value of secure string.
  SecureString({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory SecureString.fromMap(Map<String, dynamic> map) {
    return SecureString(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

