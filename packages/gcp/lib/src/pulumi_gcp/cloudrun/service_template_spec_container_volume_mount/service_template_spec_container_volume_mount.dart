// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerVolumeMount {
  /// Path within the container at which the volume should be mounted.  Must
  /// not contain ':'.
  final String mountPath;

  /// This must match the Name of a Volume.
  final String name;

  /// Path within the volume from which the container's volume should be mounted.
  final String? subPath;

  ServiceTemplateSpecContainerVolumeMount({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mountPath'] = mountPath;
    map['name'] = name;
    final subPathValue = subPath;
    if (subPathValue != null) {
      map['subPath'] = subPathValue;
    }
    return map;
  }

  factory ServiceTemplateSpecContainerVolumeMount.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}
