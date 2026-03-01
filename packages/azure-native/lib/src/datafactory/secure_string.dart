// ignore_for_file: unused_element, unnecessary_cast


/// Azure Data Factory secure string definition. The string value will be masked with asterisks '*' during Get or List API calls.
class SecureString {
  /// Type of the secret.
  /// Expected value is 'SecureString'.
  final String type;
  /// Value of secure string.
  final String value;

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
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

