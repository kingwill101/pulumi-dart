// ignore_for_file: unused_element, unnecessary_cast


class GetCustomLocationAuthentication {
  /// The type of authentication.
  final String type;
  /// The value of authentication.
  final String value;

  /// Creates a new [GetCustomLocationAuthentication].
  /// [type] The type of authentication.
  /// [value] The value of authentication.
  GetCustomLocationAuthentication({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetCustomLocationAuthentication.fromMap(Map<String, dynamic> map) {
    return GetCustomLocationAuthentication(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

