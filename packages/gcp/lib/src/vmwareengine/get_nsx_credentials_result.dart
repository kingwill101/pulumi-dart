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

  /// Creates a new [GetNsxCredentialsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Required.
  /// [password] The password of the NSX Credential.
  /// [username] The username of the NSX Credential.
  GetNsxCredentialsResult({
    required this.id,
    required this.parent,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parent': parent,
      'password': password,
      'username': username,
    };
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
