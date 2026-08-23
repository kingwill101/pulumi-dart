// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detail of a subject.
class UsersOrServicePrincipalSet {
  /// The display Name of the entity.
  final pulumi.Input<String>? displayName;
  /// The object id of the entity.
  final pulumi.Input<String>? id;
  /// The type of user.
  final pulumi.Input<String>? type;

  /// Creates a new [UsersOrServicePrincipalSet].
  /// [displayName] The display Name of the entity.
  /// [id] The object id of the entity.
  /// [type] The type of user.
  const UsersOrServicePrincipalSet({
    this.displayName,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'type': ?type,
    };
  }

  factory UsersOrServicePrincipalSet.fromMap(Map<String, dynamic> map) {
    return UsersOrServicePrincipalSet(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
