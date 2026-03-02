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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
    );
  }
}

