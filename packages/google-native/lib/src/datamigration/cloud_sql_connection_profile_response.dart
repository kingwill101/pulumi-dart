// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_settings_response.dart';

/// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfileResponse {
  /// The Cloud SQL database instance's additional (outgoing) public IP. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  final String additionalPublicIp;

  /// The Cloud SQL instance ID that this connection profile is associated with.
  final String cloudSqlId;

  /// The Cloud SQL database instance's private IP.
  final String privateIp;

  /// The Cloud SQL database instance's public IP.
  final String publicIp;

  /// Immutable. Metadata used to create the destination Cloud SQL database.
  final CloudSqlSettingsResponse settings;

  /// Creates a new [CloudSqlConnectionProfileResponse].
  /// [additionalPublicIp] The Cloud SQL database instance's additional (outgoing) public IP. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  /// [cloudSqlId] The Cloud SQL instance ID that this connection profile is associated with.
  /// [privateIp] The Cloud SQL database instance's private IP.
  /// [publicIp] The Cloud SQL database instance's public IP.
  /// [settings] Immutable. Metadata used to create the destination Cloud SQL database.
  CloudSqlConnectionProfileResponse({
    required this.additionalPublicIp,
    required this.cloudSqlId,
    required this.privateIp,
    required this.publicIp,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalPublicIp'] = additionalPublicIp;
    map['cloudSqlId'] = cloudSqlId;
    map['privateIp'] = privateIp;
    map['publicIp'] = publicIp;
    map['settings'] = settings.toMap();
    return map;
  }

  factory CloudSqlConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlConnectionProfileResponse(
      additionalPublicIp: map['additionalPublicIp'] as String,
      cloudSqlId: map['cloudSqlId'] as String,
      privateIp: map['privateIp'] as String,
      publicIp: map['publicIp'] as String,
      settings: CloudSqlSettingsResponse.fromMap(
          (map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}
