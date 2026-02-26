// ignore_for_file: unused_element, unnecessary_cast

class GetServiceTemplateSpecContainerVolumeMount {
  /// Path within the container at which the volume should be mounted.  Must
  /// not contain ':'.
  final String mountPath;

  /// The name of the Cloud Run Service.
  final String name;

  /// Path within the volume from which the container's volume should be mounted.
  final String subPath;

  GetServiceTemplateSpecContainerVolumeMount({
    required this.mountPath,
    required this.name,
    required this.subPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['name'] = name;
    map['subPath'] = subPath;
    return map;
  }

  factory GetServiceTemplateSpecContainerVolumeMount.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      subPath: map['subPath'] as String,
    );
  }
}
