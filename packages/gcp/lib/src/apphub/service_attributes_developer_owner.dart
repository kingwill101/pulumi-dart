// ignore_for_file: unused_element, unnecessary_cast


class ServiceAttributesDeveloperOwner {
  /// Contact's name.
  final String? displayName;
  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [ServiceAttributesDeveloperOwner].
  /// [displayName] Contact's name.
  /// [email] Required. Email address of the contacts.
  ServiceAttributesDeveloperOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory ServiceAttributesDeveloperOwner.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesDeveloperOwner(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}

