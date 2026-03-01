// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_template_volume_cloud_sql_instance.dart';
import 'job_template_template_volume_empty_dir.dart';
import 'job_template_template_volume_gcs.dart';
import 'job_template_template_volume_nfs.dart';
import 'job_template_template_volume_secret.dart';

class JobTemplateTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// Structure is documented below.
  final JobTemplateTemplateVolumeCloudSqlInstance? cloudSqlInstance;

  /// Ephemeral storage used as a shared volume.
  /// Structure is documented below.
  final JobTemplateTemplateVolumeEmptyDir? emptyDir;

  /// Cloud Storage bucket mounted as a volume using GCSFuse.
  /// Structure is documented below.
  final JobTemplateTemplateVolumeGcs? gcs;

  /// Volume's name.
  final String name;

  /// NFS share mounted as a volume.
  /// Structure is documented below.
  final JobTemplateTemplateVolumeNfs? nfs;

  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// Structure is documented below.
  final JobTemplateTemplateVolumeSecret? secret;

  /// Creates a new [JobTemplateTemplateVolume].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse.
  /// [name] Volume's name.
  /// [nfs] NFS share mounted as a volume.
  /// [secret] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  JobTemplateTemplateVolume({
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    required this.name,
    this.nfs,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': ?cloudSqlInstance == null
          ? null
          : cloudSqlInstance!.toMap(),
      'emptyDir': ?emptyDir == null ? null : emptyDir!.toMap(),
      'gcs': ?gcs == null ? null : gcs!.toMap(),
      'name': name,
      'nfs': ?nfs == null ? null : nfs!.toMap(),
      'secret': ?secret == null ? null : secret!.toMap(),
    };
  }

  factory JobTemplateTemplateVolume.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolume(
      cloudSqlInstance: map['cloudSqlInstance'] == null
          ? null
          : JobTemplateTemplateVolumeCloudSqlInstance.fromMap(
              (map['cloudSqlInstance'] as Map).cast<String, dynamic>(),
            ),
      emptyDir: map['emptyDir'] == null
          ? null
          : JobTemplateTemplateVolumeEmptyDir.fromMap(
              (map['emptyDir'] as Map).cast<String, dynamic>(),
            ),
      gcs: map['gcs'] == null
          ? null
          : JobTemplateTemplateVolumeGcs.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      nfs: map['nfs'] == null
          ? null
          : JobTemplateTemplateVolumeNfs.fromMap(
              (map['nfs'] as Map).cast<String, dynamic>(),
            ),
      secret: map['secret'] == null
          ? null
          : JobTemplateTemplateVolumeSecret.fromMap(
              (map['secret'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
