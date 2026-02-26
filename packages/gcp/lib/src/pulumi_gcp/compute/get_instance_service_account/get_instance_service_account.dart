// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceServiceAccount {
  /// The service account e-mail address.
  final String email;

  /// A list of service scopes.
  final List<String> scopes;

  GetInstanceServiceAccount({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory GetInstanceServiceAccount.fromMap(Map<String, dynamic> map) {
    return GetInstanceServiceAccount(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
