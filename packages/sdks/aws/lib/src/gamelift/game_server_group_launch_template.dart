// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GameServerGroupLaunchTemplate {
  /// A unique identifier for an existing EC2 launch template.
  final pulumi.Input<String>? id;
  /// A readable identifier for an existing EC2 launch template.
  final pulumi.Input<String>? name;
  /// The version of the EC2 launch template to use. If none is set, the default is the first version created.
  final pulumi.Input<String>? version;

  /// Creates a new [GameServerGroupLaunchTemplate].
  /// [id] A unique identifier for an existing EC2 launch template.
  /// [name] A readable identifier for an existing EC2 launch template.
  /// [version] The version of the EC2 launch template to use. If none is set, the default is the first version created.
  const GameServerGroupLaunchTemplate({
    this.id,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'version': ?version,
    };
  }

  factory GameServerGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GameServerGroupLaunchTemplate(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

