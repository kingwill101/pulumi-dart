// ignore_for_file: unused_element, unnecessary_cast

class JobDefinitionEksPropertiesPodPropertiesVolumeHostPath {
  /// Path of the file or directory on the host to mount into containers on the pod.
  final String path;

  JobDefinitionEksPropertiesPodPropertiesVolumeHostPath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory JobDefinitionEksPropertiesPodPropertiesVolumeHostPath.fromMap(
      Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesVolumeHostPath(
      path: map['path'] as String,
    );
  }
}
