// ignore_for_file: unused_element, unnecessary_cast

import 'service_template_volume_cloud_sql_instance.dart';
import 'service_template_volume_empty_dir.dart';
import 'service_template_volume_gcs.dart';
import 'service_template_volume_nfs.dart';
import 'service_template_volume_secret.dart';

class ServiceTemplateVolume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// Structure is documented below.
  final ServiceTemplateVolumeCloudSqlInstance? cloudSqlInstance;
  /// Ephemeral storage used as a shared volume.
  /// Structure is documented below.
  final ServiceTemplateVolumeEmptyDir? emptyDir;
  /// Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// Structure is documented below.
  final ServiceTemplateVolumeGcs? gcs;
  /// Volume's name.
  final String name;
  /// Represents an NFS mount.
  /// Structure is documented below.
  final ServiceTemplateVolumeNfs? nfs;
  /// Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// Structure is documented below.
  final ServiceTemplateVolumeSecret? secret;

  /// Creates a new [ServiceTemplateVolume].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [gcs] Cloud Storage bucket mounted as a volume using GCSFuse. This feature is only supported in the gen2 execution environment.
  /// [name] Volume's name.
  /// [nfs] Represents an NFS mount.
  /// [secret] Secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  ServiceTemplateVolume({
    this.cloudSqlInstance,
    this.emptyDir,
    this.gcs,
    required this.name,
    this.nfs,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlInstance': ?cloudSqlInstance == null ? null : cloudSqlInstance!.toMap(),
      'emptyDir': ?emptyDir == null ? null : emptyDir!.toMap(),
      'gcs': ?gcs == null ? null : gcs!.toMap(),
      'name': name,
      'nfs': ?nfs == null ? null : nfs!.toMap(),
      'secret': ?secret == null ? null : secret!.toMap(),
    };
  }

  factory ServiceTemplateVolume.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVolume(
      cloudSqlInstance: map['cloudSqlInstance'] == null ? null : ServiceTemplateVolumeCloudSqlInstance.fromMap((map['cloudSqlInstance'] as Map).cast<String, dynamic>()),
      emptyDir: map['emptyDir'] == null ? null : ServiceTemplateVolumeEmptyDir.fromMap((map['emptyDir'] as Map).cast<String, dynamic>()),
      gcs: map['gcs'] == null ? null : ServiceTemplateVolumeGcs.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nfs: map['nfs'] == null ? null : ServiceTemplateVolumeNfs.fromMap((map['nfs'] as Map).cast<String, dynamic>()),
      secret: map['secret'] == null ? null : ServiceTemplateVolumeSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}

