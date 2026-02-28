// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationAttributeDeveloperOwner {
  /// Optional. Contact's name.
  final String displayName;
  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [GetApplicationAttributeDeveloperOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  GetApplicationAttributeDeveloperOwner({
    required this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'email': email,
    };
  }

  factory GetApplicationAttributeDeveloperOwner.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeDeveloperOwner(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}

