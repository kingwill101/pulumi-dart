// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DockerImagePlatform {
  /// The OS type the Environment.
  final pulumi.Input<dynamic>? operatingSystemType;

  /// Creates a new [DockerImagePlatform].
  /// [operatingSystemType] The OS type the Environment.
  const DockerImagePlatform({
    this.operatingSystemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystemType': ?operatingSystemType,
    };
  }

  factory DockerImagePlatform.fromMap(Map<String, dynamic> map) {
    return DockerImagePlatform(
      operatingSystemType: (() { final guardedValue = map['operatingSystemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
