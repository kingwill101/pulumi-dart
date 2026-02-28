// ignore_for_file: unused_element, unnecessary_cast

class GetUsersUserPhoneNumber {
  /// When `true`, this is the primary phone number associated with the user.
  final bool primary;

  /// Type of phone number.
  final String type;

  /// User's phone number.
  final String value;

  /// Creates a new [GetUsersUserPhoneNumber].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] Type of phone number.
  /// [value] User's phone number.
  GetUsersUserPhoneNumber({
    required this.primary,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primary'] = primary;
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory GetUsersUserPhoneNumber.fromMap(Map<String, dynamic> map) {
    return GetUsersUserPhoneNumber(
      primary: map['primary'] as bool,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
