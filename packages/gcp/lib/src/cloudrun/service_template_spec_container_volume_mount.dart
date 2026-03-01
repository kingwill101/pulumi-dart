// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateSpecContainerVolumeMount {
  /// Path within the container at which the volume should be mounted.  Must
  /// not contain ':'.
  final String mountPath;

  /// This must match the Name of a Volume.
  final String name;

  /// Path within the volume from which the container's volume should be mounted.
  final String? subPath;

  /// Creates a new [ServiceTemplateSpecContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted.  Must
  /// [name] This must match the Name of a Volume.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  ServiceTemplateSpecContainerVolumeMount({
    required this.mountPath,
    required this.name,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'name': name,
      'subPath': ?subPath,
    };
  }

  factory ServiceTemplateSpecContainerVolumeMount.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateSpecContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}
