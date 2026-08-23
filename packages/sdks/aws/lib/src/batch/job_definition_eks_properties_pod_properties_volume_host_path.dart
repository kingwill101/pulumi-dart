// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesVolumeHostPath {
  /// Path of the file or directory on the host to mount into containers on the pod.
  final pulumi.Input<String> path;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesVolumeHostPath].
  /// [path] Path of the file or directory on the host to mount into containers on the pod.
  const JobDefinitionEksPropertiesPodPropertiesVolumeHostPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeHostPath.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeHostPath(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
