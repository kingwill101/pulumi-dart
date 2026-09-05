// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectCopyGrant {
  /// Email address of the grantee. Used only when `type` is `AmazonCustomerByEmail`.
  final pulumi.Input<String?>? email;
  /// Canonical user ID of the grantee. Used only when `type` is `CanonicalUser`.
  final pulumi.Input<String?>? id;
  /// List of permissions to grant to grantee. Valid values are `READ`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  final pulumi.Input<List<String>> permissions;
  /// Type of grantee. Valid values are `CanonicalUser`, `Group`, and `AmazonCustomerByEmail`.
  final pulumi.Input<String> type;
  /// URI of the grantee group. Used only when `type` is `Group`.
  final pulumi.Input<String?>? uri;

  /// Creates a new [ObjectCopyGrant].
  /// [email] Email address of the grantee. Used only when `type` is `AmazonCustomerByEmail`.
  /// [id] Canonical user ID of the grantee. Used only when `type` is `CanonicalUser`.
  /// [permissions] List of permissions to grant to grantee. Valid values are `READ`, `READ_ACP`, `WRITE_ACP`, `FULL_CONTROL`.
  /// [type] Type of grantee. Valid values are `CanonicalUser`, `Group`, and `AmazonCustomerByEmail`.
  /// [uri] URI of the grantee group. Used only when `type` is `Group`.
  const ObjectCopyGrant({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
