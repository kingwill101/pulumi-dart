// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_job_template_template_volume_cloud_sql_instance/get_job_template_template_volume_cloud_sql_instance.dart';
import '../get_job_template_template_volume_empty_dir/get_job_template_template_volume_empty_dir.dart';
import '../get_job_template_template_volume_gc/get_job_template_template_volume_gc.dart';
import '../get_job_template_template_volume_nf/get_job_template_template_volume_nf.dart';
import '../get_job_template_template_volume_secret/get_job_template_template_volume_secret.dart';

class GetJobTemplateTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final List<GetJobTemplateTemplateVolumeCloudSqlInstance> cloudSqlInstances;

  /// Ephemeral storage used as a shared volume.
  final List<GetJobTemplateTemplateVolumeEmptyDir> emptyDirs;

  /// Cloud Storage bucket mounted as a volume using GCSFuse.
  final List<GetJobTemplateTemplateVolumeGc> gcs;

  /// The name of the Cloud Run v2 Job.
  final String name;

  /// NFS share mounted as a volume.
  final List<GetJobTemplateTemplateVolumeNf> nfs;

  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final List<GetJobTemplateTemplateVolumeSecret> secrets;

  GetJobTemplateTemplateVolume({
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
        GetJobTemplateTemplateVolumeCloudSqlInstance,
        Map<String, dynamic>>(cloudSqlInstances, (value) => value.toMap());
    map['emptyDirs'] = Input.encodeList<GetJobTemplateTemplateVolumeEmptyDir,
        Map<String, dynamic>>(emptyDirs, (value) => value.toMap());
    map['gcs'] =
        Input.encodeList<GetJobTemplateTemplateVolumeGc, Map<String, dynamic>>(
            gcs, (value) => value.toMap());
    map['name'] = name;
    map['nfs'] =
        Input.encodeList<GetJobTemplateTemplateVolumeNf, Map<String, dynamic>>(
            nfs, (value) => value.toMap());
    map['secrets'] = Input.encodeList<GetJobTemplateTemplateVolumeSecret,
        Map<String, dynamic>>(secrets, (value) => value.toMap());
    return map;
  }

  factory GetJobTemplateTemplateVolume.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateVolume(
      cloudSqlInstances:
          Input.decodeList<GetJobTemplateTemplateVolumeCloudSqlInstance>(
              map['cloudSqlInstances'],
              (value) => GetJobTemplateTemplateVolumeCloudSqlInstance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      emptyDirs: Input.decodeList<GetJobTemplateTemplateVolumeEmptyDir>(
          map['emptyDirs'],
          (value) => GetJobTemplateTemplateVolumeEmptyDir.fromMap(
              (value as Map).cast<String, dynamic>())),
      gcs: Input.decodeList<GetJobTemplateTemplateVolumeGc>(
          map['gcs'],
          (value) => GetJobTemplateTemplateVolumeGc.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nfs: Input.decodeList<GetJobTemplateTemplateVolumeNf>(
          map['nfs'],
          (value) => GetJobTemplateTemplateVolumeNf.fromMap(
              (value as Map).cast<String, dynamic>())),
      secrets: Input.decodeList<GetJobTemplateTemplateVolumeSecret>(
          map['secrets'],
          (value) => GetJobTemplateTemplateVolumeSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
