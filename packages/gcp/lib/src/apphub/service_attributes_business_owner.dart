// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttributesBusinessOwner {
  /// Contact's name.
  final String? displayName;

  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [ServiceAttributesBusinessOwner].
  /// [displayName] Contact's name.
  /// [email] Required. Email address of the contacts.
  ServiceAttributesBusinessOwner({
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

  factory ServiceAttributesBusinessOwner.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesBusinessOwner(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
