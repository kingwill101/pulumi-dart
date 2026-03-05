// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupExternalId {
  /// The identifier issued to this resource by an external identity provider.
  final pulumi.Input<String>? id;
  /// The issuer for an external identifier.
  final pulumi.Input<String>? issuer;

  /// Creates a new [GroupExternalId].
  /// [id] The identifier issued to this resource by an external identity provider.
  /// [issuer] The issuer for an external identifier.
  GroupExternalId({
    this.id,
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'issuer': ?issuer,
    };
  }

  factory GroupExternalId.fromMap(Map<String, dynamic> map) {
    return GroupExternalId(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

