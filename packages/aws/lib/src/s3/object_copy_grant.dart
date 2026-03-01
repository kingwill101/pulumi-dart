// ignore_for_file: unused_element, unnecessary_cast

class ObjectCopyGrant {
  /// Email address of the grantee. Used only when `type` is `AmazonCustomerByEmail`.
  final String? email;

  /// Canonical user ID of the grantee. Used only when `type` is `CanonicalUser`.
  final String? id;

  /// List of permissions to grant to grantee. Valid values are `READ`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  final List<String> permissions;

  /// Type of grantee. Valid values are `CanonicalUser`, `Group`, and `AmazonCustomerByEmail`.
  ///
  /// This configuration block has the following optional arguments (one of the three is required):
  final String type;

  /// URI of the grantee group. Used only when `type` is `Group`.
  final String? uri;

  /// Creates a new [ObjectCopyGrant].
  /// [email] Email address of the grantee. Used only when `type` is `AmazonCustomerByEmail`.
  /// [id] Canonical user ID of the grantee. Used only when `type` is `CanonicalUser`.
  /// [permissions] List of permissions to grant to grantee. Valid values are `READ`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  /// [type] Type of grantee. Valid values are `CanonicalUser`, `Group`, and `AmazonCustomerByEmail`.
  /// [uri] URI of the grantee group. Used only when `type` is `Group`.
  ObjectCopyGrant({
    this.email,
    this.id,
    required this.permissions,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'id': ?id,
      'permissions': permissions,
      'type': type,
      'uri': ?uri,
    };
  }

  factory ObjectCopyGrant.fromMap(Map<String, dynamic> map) {
    return ObjectCopyGrant(
      email: map['email'] == null ? null : map['email'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
