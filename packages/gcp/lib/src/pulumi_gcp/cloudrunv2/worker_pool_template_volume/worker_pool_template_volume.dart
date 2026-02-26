// ignore_for_file: unused_element, unnecessary_cast

import '../worker_pool_template_volume_cloud_sql_instance/worker_pool_template_volume_cloud_sql_instance.dart';
import '../worker_pool_template_volume_empty_dir/worker_pool_template_volume_empty_dir.dart';
import '../worker_pool_template_volume_gcs/worker_pool_template_volume_gcs.dart';
import '../worker_pool_template_volume_nfs/worker_pool_template_volume_nfs.dart';
import '../worker_pool_template_volume_secret/worker_pool_template_volume_secret.dart';

class WorkerPoolTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// Structure is documented below.
  final WorkerPoolTemplateVolumeCloudSqlInstance? cloudSqlInstance;

  /// Ephemeral storage used as a shared volume.
  /// Structure is documented below.
  final WorkerPoolTemplateVolumeEmptyDir? emptyDir;

  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// Structure is documented below.
  final WorkerPoolTemplateVolumeGcs? gcs;

  /// Volume's name.
  final String name;

  /// Represents an NFS mount.
  /// Structure is documented below.
  final WorkerPoolTemplateVolumeNfs? nfs;

  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// Structure is documented below.
  final WorkerPoolTemplateVolumeSecret? secret;

  WorkerPoolTemplateVolume({
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    required this.name,
    this.nfs,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudSqlInstanceValue = cloudSqlInstance;
    if (cloudSqlInstanceValue != null) {
      map['cloudSqlInstance'] = cloudSqlInstanceValue.toMap();
    }
    final emptyDirValue = emptyDir;
    if (emptyDirValue != null) {
      map['emptyDir'] = emptyDirValue.toMap();
    }
    final gcsValue = gcs;
    if (gcsValue != null) {
      map['gcs'] = gcsValue.toMap();
    }
    map['name'] = name;
    final nfsValue = nfs;
    if (nfsValue != null) {
      map['nfs'] = nfsValue.toMap();
    }
    final secretValue = secret;
    if (secretValue != null) {
      map['secret'] = secretValue.toMap();
    }
    return map;
  }

  factory WorkerPoolTemplateVolume.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateVolume(
      cloudSqlInstance: map['cloudSqlInstance'] == null
          ? null
          : WorkerPoolTemplateVolumeCloudSqlInstance.fromMap(
              (map['cloudSqlInstance'] as Map).cast<String, dynamic>()),
      emptyDir: map['emptyDir'] == null
          ? null
          : WorkerPoolTemplateVolumeEmptyDir.fromMap(
              (map['emptyDir'] as Map).cast<String, dynamic>()),
      gcs: map['gcs'] == null
          ? null
          : WorkerPoolTemplateVolumeGcs.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nfs: map['nfs'] == null
          ? null
          : WorkerPoolTemplateVolumeNfs.fromMap(
              (map['nfs'] as Map).cast<String, dynamic>()),
      secret: map['secret'] == null
          ? null
          : WorkerPoolTemplateVolumeSecret.fromMap(
              (map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}
