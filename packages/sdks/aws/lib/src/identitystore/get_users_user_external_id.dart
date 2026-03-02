// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserExternalId {
  /// Identifier issued to this resource by an external identity provider.
  final pulumi.Input<String> id;
  /// Issuer for an external identifier.
  final pulumi.Input<String> issuer;

  /// Creates a new [GetUsersUserExternalId].
  /// [id] Identifier issued to this resource by an external identity provider.
  /// [issuer] Issuer for an external identifier.
  GetUsersUserExternalId({
    required this.id,
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'issuer': issuer,
    };
  }

  factory GetUsersUserExternalId.fromMap(Map<String, dynamic> map) {
    return GetUsersUserExternalId(
      id: (map['id'] as String).input(),
      issuer: (map['issuer'] as String).input(),
    );
  }
}

