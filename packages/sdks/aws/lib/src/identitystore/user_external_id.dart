// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final pulumi.Input<String>? id;
  /// The issuer for an external identifier.
  final pulumi.Input<String>? issuer;

  /// Creates a new [UserExternalId].
  /// [id] The identifier issued to this resource by an external identity provider.
  /// [issuer] The issuer for an external identifier.
  UserExternalId({
    this.id,
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'issuer': ?issuer,
    };
  }

  factory UserExternalId.fromMap(Map<String, dynamic> map) {
    return UserExternalId(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

