// ignore_for_file: unused_element, unnecessary_cast


class ClusterV2Addon {
  /// Customize the specific configuration information of the service component.
  final String name;
  /// Customize the resource configuration of the service component.
  final String? resourcesSpec;
  /// Customize the service configuration of the service component.
  final String? servicesSpec;
  /// Customize the service component version.
  final String version;

  /// Creates a new [ClusterV2Addon].
  /// [name] Customize the specific configuration information of the service component.
  /// [resourcesSpec] Customize the resource configuration of the service component.
  /// [servicesSpec] Customize the service configuration of the service component.
  /// [version] Customize the service component version.
  ClusterV2Addon({
    required this.name,
    this.resourcesSpec,
    this.servicesSpec,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourcesSpec': ?resourcesSpec,
      'servicesSpec': ?servicesSpec,
      'version': version,
    };
  }

  factory ClusterV2Addon.fromMap(Map<String, dynamic> map) {
    return ClusterV2Addon(
      name: map['name'] as String,
      resourcesSpec: map['resourcesSpec'] == null ? null : map['resourcesSpec'] as String,
      servicesSpec: map['servicesSpec'] == null ? null : map['servicesSpec'] as String,
      version: map['version'] as String,
    );
  }
}

