// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_cloud_sql_instance_response.dart';
import 'google_cloud_run_v2_empty_dir_volume_source_response.dart';
import 'google_cloud_run_v2_secret_volume_source_response.dart';

/// Volume represents a named volume in a container.
class GoogleCloudRunV2VolumeResponse {
  /// For Cloud SQL volumes, contains the specific instances that should be mounted. Visit https://cloud.google.com/sql/docs/mysql/connect-run for more information on how to connect Cloud SQL and Cloud Run.
  final GoogleCloudRunV2CloudSqlInstanceResponse cloudSqlInstance;

  /// Ephemeral storage used as a shared volume.
  final GoogleCloudRunV2EmptyDirVolumeSourceResponse emptyDir;

  /// Volume's name.
  final String name;

  /// Secret represents a secret that should populate this volume.
  final GoogleCloudRunV2SecretVolumeSourceResponse secret;

  GoogleCloudRunV2VolumeResponse({
    required this.cloudSqlInstance,
    required this.emptyDir,
    required this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSqlInstance'] = cloudSqlInstance.toMap();
    map['emptyDir'] = emptyDir.toMap();
    map['name'] = name;
    map['secret'] = secret.toMap();
    return map;
  }

  factory GoogleCloudRunV2VolumeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2VolumeResponse(
      cloudSqlInstance: GoogleCloudRunV2CloudSqlInstanceResponse.fromMap(
          (map['cloudSqlInstance'] as Map).cast<String, dynamic>()),
      emptyDir: GoogleCloudRunV2EmptyDirVolumeSourceResponse.fromMap(
          (map['emptyDir'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secret: GoogleCloudRunV2SecretVolumeSourceResponse.fromMap(
          (map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}
