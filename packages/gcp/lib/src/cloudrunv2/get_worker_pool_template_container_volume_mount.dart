// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateContainerVolumeMount {
  /// Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  final String mountPath;

  /// The name of the Cloud Run v2 Worker Pool.
  final String name;

  /// Path within the volume from which the container's volume should be mounted.
  final String subPath;

  /// Creates a new [GetWorkerPoolTemplateContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  GetWorkerPoolTemplateContainerVolumeMount({
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

  factory GetWorkerPoolTemplateContainerVolumeMount.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      subPath: map['subPath'] as String,
    );
  }
}
