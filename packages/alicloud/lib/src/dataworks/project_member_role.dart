// ignore_for_file: unused_element, unnecessary_cast


class ProjectMemberRole {
  /// Project Role Code.
  final String? code;
  /// project role name
  final String? name;
  /// project role type
  final String? type;

  /// Creates a new [ProjectMemberRole].
  /// [code] Project Role Code.
  /// [name] project role name
  /// [type] project role type
  ProjectMemberRole({
    this.code,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ProjectMemberRole.fromMap(Map<String, dynamic> map) {
    return ProjectMemberRole(
      code: map['code'] == null ? null : map['code'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

