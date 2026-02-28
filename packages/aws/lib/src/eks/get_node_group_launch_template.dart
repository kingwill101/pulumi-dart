// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupLaunchTemplate {
  /// The ID of the launch template.
  final String id;

  /// Name of the AutoScaling Group.
  final String name;

  /// Kubernetes version.
  final String version;

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
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory GetNodeGroupLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupLaunchTemplate(
      id: map['id'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
