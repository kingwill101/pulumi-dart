// ignore_for_file: unused_element, unnecessary_cast

class GetUserEmail {
  /// When `true`, this is the primary phone number associated with the user.
  final bool primary;

  /// The type of phone number.
  final String type;

  /// The user's phone number.
  final String value;

  /// Creates a new [GetUserEmail].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] The type of phone number.
  /// [value] The user's phone number.
  GetUserEmail({
    required this.primary,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'primary': primary, 'type': type, 'value': value};
  }

  factory GetUserEmail.fromMap(Map<String, dynamic> map) {
    return GetUserEmail(
      primary: map['primary'] as bool,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
