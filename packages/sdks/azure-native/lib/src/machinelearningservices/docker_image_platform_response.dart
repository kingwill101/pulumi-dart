// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DockerImagePlatformResponse {
  /// The OS type the Environment.
  final pulumi.Input<String>? operatingSystemType;

  /// Creates a new [DockerImagePlatformResponse].
  /// [operatingSystemType] The OS type the Environment.
  DockerImagePlatformResponse({
    this.operatingSystemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystemType': ?operatingSystemType,
    };
  }

  factory DockerImagePlatformResponse.fromMap(Map<String, dynamic> map) {
    return DockerImagePlatformResponse(
      operatingSystemType: map['operatingSystemType'] == null ? null : (map['operatingSystemType'] as String).input(),
    );
  }
}

