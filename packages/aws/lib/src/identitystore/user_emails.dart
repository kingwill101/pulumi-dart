// ignore_for_file: unused_element, unnecessary_cast


class UserEmails {
  /// When `true`, this is the primary email associated with the user.
  final bool? primary;
  /// The type of email.
  final String? type;
  /// The email address. This value must be unique across the identity store.
  final String? value;

  /// Creates a new [UserEmails].
  /// [primary] When `true`, this is the primary email associated with the user.
  /// [type] The type of email.
  /// [value] The email address. This value must be unique across the identity store.
  UserEmails({
    this.primary,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'type': ?type,
      'value': ?value,
    };
  }

  factory UserEmails.fromMap(Map<String, dynamic> map) {
    return UserEmails(
      primary: map['primary'] == null ? null : map['primary'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

