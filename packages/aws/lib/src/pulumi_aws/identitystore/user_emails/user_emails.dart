// ignore_for_file: unused_element, unnecessary_cast

class UserEmails {
  /// When <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, this is the primary email associated with the user.
  final bool? primary;

  /// The type of email.
  final String? type;

  /// The email address. This value must be unique across the identity store.
  final String? value;

  UserEmails({
    this.primary,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final primaryValue = primary;
    if (primaryValue != null) {
      map['primary'] = primaryValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory UserEmails.fromMap(Map<String, dynamic> map) {
    return UserEmails(
      primary: map['primary'] == null ? null : map['primary'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
