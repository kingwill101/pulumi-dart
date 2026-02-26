// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAttributeDeveloperOwner {
  /// Optional. Contact's name.
  final String displayName;

  /// Required. Email address of the contacts.
  final String email;

  GetApplicationAttributeDeveloperOwner({
    required this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['email'] = email;
    return map;
  }

  factory GetApplicationAttributeDeveloperOwner.fromMap(
      Map<String, dynamic> map) {
    return GetApplicationAttributeDeveloperOwner(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
