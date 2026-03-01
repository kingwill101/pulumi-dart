// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateContainerVolumeMount {
  /// Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  final String mountPath;

  /// This must match the Name of a Volume.
  final String name;

  /// Path within the volume from which the container's volume should be mounted.
  final String? subPath;

  /// Creates a new [JobTemplateTemplateContainerVolumeMount].
  /// [mountPath] Path within the container at which the volume should be mounted. Must not contain ':'. For Cloud SQL volumes, it can be left empty, or must otherwise be /cloudsql. All instances defined in the Volume will be available as /cloudsql/[instance]. For more information on Cloud SQL volumes, visit https://cloud.google.com/sql/docs/mysql/connect-run
  /// [name] This must match the Name of a Volume.
  /// [subPath] Path within the volume from which the container's volume should be mounted.
  JobTemplateTemplateContainerVolumeMount({
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

  factory JobTemplateTemplateContainerVolumeMount.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobTemplateTemplateContainerVolumeMount(
      mountPath: map['mountPath'] as String,
      name: map['name'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}
