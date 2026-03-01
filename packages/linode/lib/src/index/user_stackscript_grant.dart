// ignore_for_file: unused_element, unnecessary_cast


class UserStackscriptGrant {
  /// The ID of the entity this grant applies to.
  final int id;
  /// The level of access this User has to this entity. If null, this User has no access.
  final String permissions;

  /// Creates a new [UserStackscriptGrant].
  /// [id] The ID of the entity this grant applies to.
  /// [permissions] The level of access this User has to this entity. If null, this User has no access.
  UserStackscriptGrant({
    required this.id,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'permissions': permissions,
    };
  }

  factory UserStackscriptGrant.fromMap(Map<String, dynamic> map) {
    return UserStackscriptGrant(
      id: map['id'] as int,
      permissions: map['permissions'] as String,
    );
  }
}

