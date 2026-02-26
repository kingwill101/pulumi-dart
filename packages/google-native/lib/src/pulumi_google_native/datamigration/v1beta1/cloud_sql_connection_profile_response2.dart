// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_settings_response2.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfileResponse2 {
  /// The Cloud SQL instance ID that this connection profile is associated with.
  final String cloudSqlId;

  /// The Cloud SQL database instance's private IP.
  final String privateIp;

  /// The Cloud SQL database instance's public IP.
  final String publicIp;

  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final CloudSqlSettingsResponse2 settings;

  CloudSqlConnectionProfileResponse2({
    required this.cloudSqlId,
    required this.privateIp,
    required this.publicIp,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSqlId'] = cloudSqlId;
    map['privateIp'] = privateIp;
    map['publicIp'] = publicIp;
    map['settings'] = settings.toMap();
    return map;
  }

  factory CloudSqlConnectionProfileResponse2.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfileResponse2(
      cloudSqlId: map['cloudSqlId'] as String,
      privateIp: map['privateIp'] as String,
      publicIp: map['publicIp'] as String,
      settings: CloudSqlSettingsResponse2.fromMap(
          (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
