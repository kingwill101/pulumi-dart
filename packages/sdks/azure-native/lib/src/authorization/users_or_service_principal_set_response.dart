// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detail of a subject.
class UsersOrServicePrincipalSetResponse {
  /// The display Name of the entity.
  final pulumi.Input<String>? displayName;
  /// The object id of the entity.
  final pulumi.Input<String>? id;
  /// The type of user.
  final pulumi.Input<String>? type;

  /// Creates a new [UsersOrServicePrincipalSetResponse].
  /// [displayName] The display Name of the entity.
  /// [id] The object id of the entity.
  /// [type] The type of user.
  UsersOrServicePrincipalSetResponse({
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

  factory UsersOrServicePrincipalSetResponse.fromMap(Map<String, dynamic> map) {
    return UsersOrServicePrincipalSetResponse(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

