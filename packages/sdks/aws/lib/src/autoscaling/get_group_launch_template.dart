// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupLaunchTemplate {
  /// ID of the launch template.
  final pulumi.Input<String> id;

  /// Specify the exact name of the desired autoscaling group.
  final pulumi.Input<String> name;

  /// Template version.
  final pulumi.Input<String> version;

  /// Creates a new [GetGroupLaunchTemplate].
  /// [id] ID of the launch template.
  /// [name] Specify the exact name of the desired autoscaling group.
  /// [version] Template version.
  GetGroupLaunchTemplate({
    required this.id,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name, 'version': version};
  }

  factory GetGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GetGroupLaunchTemplate(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
