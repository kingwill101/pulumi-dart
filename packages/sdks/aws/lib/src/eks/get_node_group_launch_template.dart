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
    return <String, dynamic>{
      'id': id,
      'name': name,
      'version': version,
    };
  }

  factory GetNodeGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupLaunchTemplate(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

