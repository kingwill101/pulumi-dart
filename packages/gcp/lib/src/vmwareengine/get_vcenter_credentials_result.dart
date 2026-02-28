// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVcenterCredentials.
class GetVcenterCredentialsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parent;
  /// The password of the Vcenter Credential.
  final String password;
  /// The username of the Vcenter Credential.
  final String username;

  /// Creates a new [GetVcenterCredentialsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Required.
  /// [password] The password of the Vcenter Credential.
  /// [username] The username of the Vcenter Credential.
  GetVcenterCredentialsResult({
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

  factory GetVcenterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetVcenterCredentialsResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

