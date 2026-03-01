// ignore_for_file: unused_element, unnecessary_cast

class GetUsersUserEmail {
  /// When `true`, this is the primary phone number associated with the user.
  final bool primary;

  /// Type of phone number.
  final String type;

  /// User's phone number.
  final String value;

  /// Creates a new [GetUsersUserEmail].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] Type of phone number.
  /// [value] User's phone number.
  GetUsersUserEmail({
    required this.primary,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'primary': primary, 'type': type, 'value': value};
  }

  factory GetUsersUserEmail.fromMap(Map<String, dynamic> map) {
    return GetUsersUserEmail(
      primary: map['primary'] as bool,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
