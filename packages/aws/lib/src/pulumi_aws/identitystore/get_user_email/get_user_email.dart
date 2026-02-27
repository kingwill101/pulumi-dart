// ignore_for_file: unused_element, unnecessary_cast

class GetUserEmail {
  /// When `true`, this is the primary phone number associated with the user.
  final bool primary;

  /// The type of phone number.
  final String type;

  /// The user's phone number.
  final String value;

  GetUserEmail({
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

  factory GetUserEmail.fromMap(Map<String, dynamic> map) {
    return GetUserEmail(
      primary: map['primary'] as bool,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
