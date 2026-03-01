// ignore_for_file: unused_element, unnecessary_cast

class GetGroupLaunchTemplate {
  /// ID of the launch template.
  final String id;

  /// Specify the exact name of the desired autoscaling group.
  final String name;

  /// Template version.
  final String version;

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
      id: map['id'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
