// ignore_for_file: unused_element, unnecessary_cast

class UserPhoneNumbers {
  /// When `true`, this is the primary phone number associated with the user.
  final bool? primary;

  /// The type of phone number.
  final String? type;

  /// The user's phone number.
  final String? value;

  /// Creates a new [UserPhoneNumbers].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] The type of phone number.
  /// [value] The user's phone number.
  UserPhoneNumbers({this.primary, this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'type': ?type,
      'value': ?value,
    };
  }

  factory UserPhoneNumbers.fromMap(Map<String, dynamic> map) {
    return UserPhoneNumbers(
      primary: map['primary'] == null ? null : map['primary'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
