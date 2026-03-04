// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupLaunchTemplate {
  /// The ID of the launch template.
  final pulumi.Input<String> id;

  /// Name of the AutoScaling Group.
  final pulumi.Input<String> name;

  /// Kubernetes version.
  final pulumi.Input<String> version;

  /// Creates a new [GetNodeGroupLaunchTemplate].
  /// [id] The ID of the launch template.
  /// [name] Name of the AutoScaling Group.
  /// [version] Kubernetes version.
  GetNodeGroupLaunchTemplate({
    required this.id,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'name': name, 'version': version};
  }

  factory GetNodeGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupLaunchTemplate(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
