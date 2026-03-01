// ignore_for_file: unused_element, unnecessary_cast


/// The detail of a subject.
class UsersOrServicePrincipalSet {
  /// The display Name of the entity.
  final String? displayName;
  /// The object id of the entity.
  final String? id;
  /// The type of user.
  final String? type;

  /// Creates a new [UsersOrServicePrincipalSet].
  /// [displayName] The display Name of the entity.
  /// [id] The object id of the entity.
  /// [type] The type of user.
  UsersOrServicePrincipalSet({
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
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

