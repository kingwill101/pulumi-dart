// ignore_for_file: unused_element, unnecessary_cast


class JobDefinitionEksPropertiesPodPropertiesVolumeHostPath {
  /// Path of the file or directory on the host to mount into containers on the pod.
  final String path;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesVolumeHostPath].
  /// [path] Path of the file or directory on the host to mount into containers on the pod.
  JobDefinitionEksPropertiesPodPropertiesVolumeHostPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeHostPath.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeHostPath(
      path: map['path'] as String,
    );
  }
}

