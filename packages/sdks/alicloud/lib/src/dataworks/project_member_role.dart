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
  const ProjectMemberRole({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

