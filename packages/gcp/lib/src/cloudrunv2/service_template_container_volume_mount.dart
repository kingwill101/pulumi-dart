// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateContainerVolumeMount {
  /// Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  final String mountPath;

  /// This must match the Name of a Volume.
  final String name;

  /// Path within the volume from which the container's volume should be mounted.
  final String? subPath;

  /// Creates a new [ServiceTemplateContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  /// [name] This must match the Name of a Volume.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  ServiceTemplateContainerVolumeMount({
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

  factory ServiceTemplateContainerVolumeMount.fromMap(
      Map<String, dynamic> map) {
    return ServiceTemplateContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}
