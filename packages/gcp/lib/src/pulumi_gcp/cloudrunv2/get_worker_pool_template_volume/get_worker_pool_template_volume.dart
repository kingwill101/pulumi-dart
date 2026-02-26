// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_worker_pool_template_volume_cloud_sql_instance/get_worker_pool_template_volume_cloud_sql_instance.dart';
import '../get_worker_pool_template_volume_empty_dir/get_worker_pool_template_volume_empty_dir.dart';
import '../get_worker_pool_template_volume_gc/get_worker_pool_template_volume_gc.dart';
import '../get_worker_pool_template_volume_nf/get_worker_pool_template_volume_nf.dart';
import '../get_worker_pool_template_volume_secret/get_worker_pool_template_volume_secret.dart';

class GetWorkerPoolTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final List<GetWorkerPoolTemplateVolumeCloudSqlInstance> cloudSqlInstances;

  /// Ephemeral storage used as a shared volume.
  final List<GetWorkerPoolTemplateVolumeEmptyDir> emptyDirs;

  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  final List<GetWorkerPoolTemplateVolumeGc> gcs;

  /// The name of the Cloud Run v2 Worker Pool.
  final String name;

  /// Represents an NFS mount.
  final List<GetWorkerPoolTemplateVolumeNf> nfs;

  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final List<GetWorkerPoolTemplateVolumeSecret> secrets;

  GetWorkerPoolTemplateVolume({
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
        GetWorkerPoolTemplateVolumeCloudSqlInstance,
        Map<String, dynamic>>(cloudSqlInstances, (value) => value.toMap());
    map['emptyDirs'] = Input.encodeList<GetWorkerPoolTemplateVolumeEmptyDir,
        Map<String, dynamic>>(emptyDirs, (value) => value.toMap());
    map['gcs'] =
        Input.encodeList<GetWorkerPoolTemplateVolumeGc, Map<String, dynamic>>(
            gcs, (value) => value.toMap());
    map['name'] = name;
    map['nfs'] =
        Input.encodeList<GetWorkerPoolTemplateVolumeNf, Map<String, dynamic>>(
            nfs, (value) => value.toMap());
    map['secrets'] = Input.encodeList<GetWorkerPoolTemplateVolumeSecret,
        Map<String, dynamic>>(secrets, (value) => value.toMap());
    return map;
  }

  factory GetWorkerPoolTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVolume(
      cloudSqlInstances:
          Input.decodeList<GetWorkerPoolTemplateVolumeCloudSqlInstance>(
              map['cloudSqlInstances'],
              (value) => GetWorkerPoolTemplateVolumeCloudSqlInstance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      emptyDirs: Input.decodeList<GetWorkerPoolTemplateVolumeEmptyDir>(
          map['emptyDirs'],
          (value) => GetWorkerPoolTemplateVolumeEmptyDir.fromMap(
              (value as Map).cast<String, dynamic>())),
      gcs: Input.decodeList<GetWorkerPoolTemplateVolumeGc>(
          map['gcs'],
          (value) => GetWorkerPoolTemplateVolumeGc.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nfs: Input.decodeList<GetWorkerPoolTemplateVolumeNf>(
          map['nfs'],
          (value) => GetWorkerPoolTemplateVolumeNf.fromMap(
              (value as Map).cast<String, dynamic>())),
      secrets: Input.decodeList<GetWorkerPoolTemplateVolumeSecret>(
          map['secrets'],
          (value) => GetWorkerPoolTemplateVolumeSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
