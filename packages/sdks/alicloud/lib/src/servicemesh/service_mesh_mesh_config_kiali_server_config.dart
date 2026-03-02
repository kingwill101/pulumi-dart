// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshMeshConfigKialiServerConfig {
  /// The domain name or address used when accessing the mesh topology in a custom way
  final pulumi.Input<String>? webFqdn;
  /// The port used when accessing the mesh topology in a custom way
  final pulumi.Input<int>? webPort;
  /// The root path of the service when accessing the mesh topology in a custom way
  final pulumi.Input<String>? webRoot;
  /// The protocol used when accessing the mesh topology in a custom way. Can only be http or https
  final pulumi.Input<String>? webSchema;

  /// Creates a new [ServiceMeshMeshConfigKialiServerConfig].
  /// [webFqdn] The domain name or address used when accessing the mesh topology in a custom way
  /// [webPort] The port used when accessing the mesh topology in a custom way
  /// [webRoot] The root path of the service when accessing the mesh topology in a custom way
  /// [webSchema] The protocol used when accessing the mesh topology in a custom way. Can only be http or https
  ServiceMeshMeshConfigKialiServerConfig({
    this.webFqdn,
    this.webPort,
    this.webRoot,
    this.webSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webFqdn': ?webFqdn,
      'webPort': ?webPort,
      'webRoot': ?webRoot,
      'webSchema': ?webSchema,
    };
  }

  factory ServiceMeshMeshConfigKialiServerConfig.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMeshConfigKialiServerConfig(
      webFqdn: map['webFqdn'] == null ? null : (map['webFqdn']! as String).input(),
      webPort: map['webPort'] == null ? null : (map['webPort']! as int).input(),
      webRoot: map['webRoot'] == null ? null : (map['webRoot']! as String).input(),
      webSchema: map['webSchema'] == null ? null : (map['webSchema']! as String).input(),
    );
  }
}

