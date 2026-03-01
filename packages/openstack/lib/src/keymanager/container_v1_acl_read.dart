// ignore_for_file: unused_element, unnecessary_cast


class ContainerV1AclRead {
  /// The date the container was created.
  final String? createdAt;
  /// Whether the container is accessible project wide.
  /// Defaults to `true`.
  final bool? projectAccess;
  /// The date the container was last updated.
  final String? updatedAt;
  /// The list of user IDs, which are allowed to access the
  /// container, when `project_access` is set to `false`.
  final List<String>? users;

  /// Creates a new [ContainerV1AclRead].
  /// [createdAt] The date the container was created.
  /// [projectAccess] Whether the container is accessible project wide.
  /// [updatedAt] The date the container was last updated.
  /// [users] The list of user IDs, which are allowed to access the
  ContainerV1AclRead({
    this.createdAt,
    this.projectAccess,
    this.updatedAt,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'projectAccess': ?projectAccess,
      'updatedAt': ?updatedAt,
      'users': ?users,
    };
  }

  factory ContainerV1AclRead.fromMap(Map<String, dynamic> map) {
    return ContainerV1AclRead(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      projectAccess: map['projectAccess'] == null ? null : map['projectAccess'] as bool,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
      users: map['users'] == null ? null : (map['users'] as List).cast<String>(),
    );
  }
}

