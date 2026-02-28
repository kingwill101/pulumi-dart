// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttributesOperatorOwner {
  /// Optional. Contact's name.
  final String? displayName;

  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [ApplicationAttributesOperatorOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  ApplicationAttributesOperatorOwner({
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

  factory ApplicationAttributesOperatorOwner.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesOperatorOwner(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
