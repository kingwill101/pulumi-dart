// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupLaunchTemplate {
  /// ID of the launch template. Conflicts with `name`.
  final pulumi.Input<String>? id;
  /// Name of the launch template. Conflicts with `id`.
  final pulumi.Input<String>? name;
  /// Template version. Can be version number, `$Latest`, or `$Default`. (Default: `$Default`).
  final pulumi.Input<String>? version;

  /// Creates a new [GroupLaunchTemplate].
  /// [id] ID of the launch template. Conflicts with `name`.
  /// [name] Name of the launch template. Conflicts with `id`.
  /// [version] Template version. Can be version number, `$Latest`, or `$Default`. (Default: `$Default`).
  const GroupLaunchTemplate({
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

  factory GroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GroupLaunchTemplate(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
