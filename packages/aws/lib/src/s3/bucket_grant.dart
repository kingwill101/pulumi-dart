// ignore_for_file: unused_element, unnecessary_cast

class BucketGrant {
  /// Canonical user id to grant for. Used only when `type` is `CanonicalUser`.
  final String? id;

  /// List of permissions to apply for grantee. Valid values are `READ`, `WRITE`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  final List<String> permissions;

  /// Type of grantee to apply for. Valid values are `CanonicalUser` and `Group`. `AmazonCustomerByEmail` is not supported.
  final String type;

  /// Uri address to grant for. Used only when `type` is `Group`.
  final String? uri;

  /// Creates a new [BucketGrant].
  /// [id] Canonical user id to grant for. Used only when `type` is `CanonicalUser`.
  /// [permissions] List of permissions to apply for grantee. Valid values are `READ`, `WRITE`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  /// [type] Type of grantee to apply for. Valid values are `CanonicalUser` and `Group`. `AmazonCustomerByEmail` is not supported.
  /// [uri] Uri address to grant for. Used only when `type` is `Group`.
  BucketGrant({
    this.id,
    required this.permissions,
    required this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'permissions': permissions,
      'type': type,
      'uri': ?uri,
    };
  }

  factory BucketGrant.fromMap(Map<String, dynamic> map) {
    return BucketGrant(
      id: map['id'] == null ? null : map['id'] as String,
      permissions: (map['permissions'] as List).cast<String>(),
      type: map['type'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
