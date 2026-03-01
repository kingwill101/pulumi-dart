// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAttributeBusinessOwner {
  /// Optional. Contact's name.
  final String displayName;

  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [GetApplicationAttributeBusinessOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  GetApplicationAttributeBusinessOwner({
    required this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': displayName, 'email': email};
  }

  factory GetApplicationAttributeBusinessOwner.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationAttributeBusinessOwner(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
