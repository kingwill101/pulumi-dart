// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectMemberRole {
  /// Project Role Code.
  final pulumi.Input<String>? code;
  /// project role name
  final pulumi.Input<String>? name;
  /// project role type
  final pulumi.Input<String>? type;

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
      code: map['code'] == null ? null : (map['code']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

