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

  GetVcenterCredentialsResult({
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

  factory GetVcenterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetVcenterCredentialsResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
