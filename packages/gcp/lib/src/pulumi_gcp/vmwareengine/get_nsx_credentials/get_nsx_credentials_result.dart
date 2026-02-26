// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNsxCredentials.
class GetNsxCredentialsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parent;

  /// The password of the NSX Credential.
  final String password;

  /// The username of the NSX Credential.
  final String username;

  GetNsxCredentialsResult({
    required this.id,
    required this.parent,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['parent'] = parent;
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory GetNsxCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetNsxCredentialsResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
