// ignore_for_file: unused_element, unnecessary_cast


class SpotInstanceRequestLaunchTemplate {
  /// ID of the launch template. Conflicts with `name`.
  final String? id;
  /// Name of the launch template. Conflicts with `id`.
  final String? name;
  /// Template version. Can be a specific version number, `$Latest` or `$Default`. The default value is `$Default`.
  final String? version;

  /// Creates a new [SpotInstanceRequestLaunchTemplate].
  /// [id] ID of the launch template. Conflicts with `name`.
  /// [name] Name of the launch template. Conflicts with `id`.
  /// [version] Template version. Can be a specific version number, `$Latest` or `$Default`. The default value is `$Default`.
  SpotInstanceRequestLaunchTemplate({
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

  factory SpotInstanceRequestLaunchTemplate.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestLaunchTemplate(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

