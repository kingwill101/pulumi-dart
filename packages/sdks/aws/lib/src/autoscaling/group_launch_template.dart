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
  GroupLaunchTemplate({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

