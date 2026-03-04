// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketGrant {
  /// Canonical user id to grant for. Used only when `type` is `CanonicalUser`.
  final pulumi.Input<String>? id;

  /// List of permissions to apply for grantee. Valid values are `READ`, `WRITE`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  final pulumi.Input<List<String>> permissions;

  /// Type of grantee to apply for. Valid values are `CanonicalUser` and `Group`. `AmazonCustomerByEmail` is not supported.
  final pulumi.Input<String> type;

  /// Uri address to grant for. Used only when `type` is `Group`.
  final pulumi.Input<String>? uri;

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
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissions: pulumi.Input.fromValue(
        (map['permissions'] as List).cast<String>(),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
