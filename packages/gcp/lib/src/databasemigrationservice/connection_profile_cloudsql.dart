// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_cloudsql_settings.dart';

class ConnectionProfileCloudsql {
  /// (Output)
  /// Output only. The Cloud SQL instance ID that this connection profile is associated with.
  final String? cloudSqlId;

  /// (Output)
  /// Output only. The Cloud SQL database instance's private IP.
  final String? privateIp;

  /// (Output)
  /// Output only. The Cloud SQL database instance's public IP.
  final String? publicIp;

  /// Immutable. Metadata used to create the destination Cloud SQL database.
  /// Structure is documented below.
  final ConnectionProfileCloudsqlSettings? settings;

  /// Creates a new [ConnectionProfileCloudsql].
  /// [cloudSqlId] (Output)
  /// [privateIp] (Output)
  /// [publicIp] (Output)
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  ConnectionProfileCloudsql({
    this.cloudSqlId,
    this.privateIp,
    this.publicIp,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudSqlIdValue = cloudSqlId;
    if (cloudSqlIdValue != null) {
      map['cloudSqlId'] = cloudSqlIdValue;
    }
    final privateIpValue = privateIp;
    if (privateIpValue != null) {
      map['privateIp'] = privateIpValue;
    }
    final publicIpValue = publicIp;
    if (publicIpValue != null) {
      map['publicIp'] = publicIpValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = settingsValue.toMap();
    }
    return map;
  }

  factory ConnectionProfileCloudsql.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileCloudsql(
      cloudSqlId:
          map['cloudSqlId'] == null ? null : map['cloudSqlId'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      publicIp: map['publicIp'] == null ? null : map['publicIp'] as String,
      settings: map['settings'] == null
          ? null
          : ConnectionProfileCloudsqlSettings.fromMap(
              (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
