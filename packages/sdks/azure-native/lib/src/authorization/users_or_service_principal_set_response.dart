// ignore_for_file: unused_element, unnecessary_cast


/// The detail of a subject.
class UsersOrServicePrincipalSetResponse {
  /// The display Name of the entity.
  final String? displayName;
  /// The object id of the entity.
  final String? id;
  /// The type of user.
  final String? type;

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
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

