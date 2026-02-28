// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_cloud_sql_instance.dart';
import 'google_cloud_run_v2_empty_dir_volume_source.dart';
import 'google_cloud_run_v2_secret_volume_source.dart';

/// Volume represents a named volume in a container.
class GoogleCloudRunV2Volume {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final GoogleCloudRunV2CloudSqlInstance? cloudSqlInstance;

  /// Ephemeral storage used as a shared volume.
  final GoogleCloudRunV2EmptyDirVolumeSource? emptyDir;

  /// Volume's name.
  final String name;

  /// Secret represents a secret that should populate this volume.
  final GoogleCloudRunV2SecretVolumeSource? secret;

  /// Creates a new [GoogleCloudRunV2Volume].
  /// [cloudSqlInstance] For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [name] Volume's name.
  /// [secret] Secret represents a secret that should populate this volume.
  GoogleCloudRunV2Volume({
    this.cloudSqlInstance,
    this.emptyDir,
    required this.name,
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
    map['name'] = name;
    final secretValue = secret;
    if (secretValue != null) {
      map['secret'] = secretValue.toMap();
    }
    return map;
  }

  factory GoogleCloudRunV2Volume.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2Volume(
      cloudSqlInstance: map['cloudSqlInstance'] == null
          ? null
          : GoogleCloudRunV2CloudSqlInstance.fromMap(
              (map['cloudSqlInstance'] as Map).cast<String, dynamic>()),
      emptyDir: map['emptyDir'] == null
          ? null
          : GoogleCloudRunV2EmptyDirVolumeSource.fromMap(
              (map['emptyDir'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secret: map['secret'] == null
          ? null
          : GoogleCloudRunV2SecretVolumeSource.fromMap(
              (map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}
