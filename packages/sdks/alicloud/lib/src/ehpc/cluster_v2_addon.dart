// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterV2Addon {
  /// Customize the specific configuration information of the service component.
  final pulumi.Input<String> name;
  /// Customize the resource configuration of the service component.
  final pulumi.Input<String>? resourcesSpec;
  /// Customize the service configuration of the service component.
  final pulumi.Input<String>? servicesSpec;
  /// Customize the service component version.
  final pulumi.Input<String> version;

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
      name: (map['name'] as String).input(),
      resourcesSpec: map['resourcesSpec'] == null ? null : (map['resourcesSpec'] as String).input(),
      servicesSpec: map['servicesSpec'] == null ? null : (map['servicesSpec'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

