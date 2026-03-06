// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HostVolumeProperties
class HostVolumeProperties {
  /// When the ``host`` parameter is used, specify a ``sourcePath`` to declare the path on the host container instance that's presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the ``host`` parameter contains a ``sourcePath`` file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the ``sourcePath`` value doesn't exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported. If you're using the Fargate launch type, the ``sourcePath`` parameter is not supported.
  final pulumi.Input<String>? sourcePath;

  /// Creates a new [HostVolumeProperties].
  /// [sourcePath] When the ``host`` parameter is used, specify a ``sourcePath`` to declare the path on the host container instance that's presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the ``host`` parameter contains a ``sourcePath`` file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the ``sourcePath`` value doesn't exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported. If you're using the Fargate launch type, the ``sourcePath`` parameter is not supported.
  const HostVolumeProperties({
    this.sourcePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePath': ?sourcePath,
    };
  }

  factory HostVolumeProperties.fromMap(Map<String, dynamic> map) {
    return HostVolumeProperties(
      sourcePath: (() { final guardedValue = map['sourcePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

