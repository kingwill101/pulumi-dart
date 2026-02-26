// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAttributeOperatorOwner {
  /// Optional. Contact's name.
  final String displayName;

  /// Required. Email address of the contacts.
  final String email;

  GetApplicationAttributeOperatorOwner({
    required this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['email'] = email;
    return map;
  }

  factory GetApplicationAttributeOperatorOwner.fromMap(
      Map<String, dynamic> map) {
    return GetApplicationAttributeOperatorOwner(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
