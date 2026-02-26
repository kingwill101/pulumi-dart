// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttributesDeveloperOwner {
  /// Optional. Contact's name.
  final String? displayName;

  /// Required. Email address of the contacts.
  final String email;

  ApplicationAttributesDeveloperOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['email'] = email;
    return map;
  }

  factory ApplicationAttributesDeveloperOwner.fromMap(
      Map<String, dynamic> map) {
    return ApplicationAttributesDeveloperOwner(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
