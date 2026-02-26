// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_volume_cloud_sql_instance/get_service_template_volume_cloud_sql_instance.dart';
import '../get_service_template_volume_empty_dir/get_service_template_volume_empty_dir.dart';
import '../get_service_template_volume_gc/get_service_template_volume_gc.dart';
import '../get_service_template_volume_nf/get_service_template_volume_nf.dart';
import '../get_service_template_volume_secret/get_service_template_volume_secret.dart';

class GetServiceTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final List<GetServiceTemplateVolumeCloudSqlInstance> cloudSqlInstances;

  /// Ephemeral storage used as a shared volume.
  final List<GetServiceTemplateVolumeEmptyDir> emptyDirs;

  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  final List<GetServiceTemplateVolumeGc> gcs;

  /// The name of the Cloud Run v2 Service.
  final String name;

  /// Represents an NFS mount.
  final List<GetServiceTemplateVolumeNf> nfs;

  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final List<GetServiceTemplateVolumeSecret> secrets;

  GetServiceTemplateVolume({
    required this.cloudSqlInstances,
    required this.emptyDirs,
    required this.gcs,
    required this.name,
    required this.nfs,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSqlInstances'] = Input.encodeList<
        GetServiceTemplateVolumeCloudSqlInstance,
        Map<String, dynamic>>(cloudSqlInstances, (value) => value.toMap());
    map['emptyDirs'] = Input.encodeList<GetServiceTemplateVolumeEmptyDir,
        Map<String, dynamic>>(emptyDirs, (value) => value.toMap());
    map['gcs'] =
        Input.encodeList<GetServiceTemplateVolumeGc, Map<String, dynamic>>(
            gcs, (value) => value.toMap());
    map['name'] = name;
    map['nfs'] =
        Input.encodeList<GetServiceTemplateVolumeNf, Map<String, dynamic>>(
            nfs, (value) => value.toMap());
    map['secrets'] =
        Input.encodeList<GetServiceTemplateVolumeSecret, Map<String, dynamic>>(
            secrets, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolume(
      cloudSqlInstances:
          Input.decodeList<GetServiceTemplateVolumeCloudSqlInstance>(
              map['cloudSqlInstances'],
              (value) => GetServiceTemplateVolumeCloudSqlInstance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      emptyDirs: Input.decodeList<GetServiceTemplateVolumeEmptyDir>(
          map['emptyDirs'],
          (value) => GetServiceTemplateVolumeEmptyDir.fromMap(
              (value as Map).cast<String, dynamic>())),
      gcs: Input.decodeList<GetServiceTemplateVolumeGc>(
          map['gcs'],
          (value) => GetServiceTemplateVolumeGc.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nfs: Input.decodeList<GetServiceTemplateVolumeNf>(
          map['nfs'],
          (value) => GetServiceTemplateVolumeNf.fromMap(
              (value as Map).cast<String, dynamic>())),
      secrets: Input.decodeList<GetServiceTemplateVolumeSecret>(
          map['secrets'],
          (value) => GetServiceTemplateVolumeSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
