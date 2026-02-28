// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_credential_response.dart';

/// Connection properties specific to the Cloud SQL.
class CloudSqlPropertiesResponse {
  /// Input only. Cloud SQL credential.
  final CloudSqlCredentialResponse credential;

  /// Database name.
  final String database;

  /// Cloud SQL instance ID in the form `project:location:instance`.
  final String instanceId;

  /// The account ID of the service used for the purpose of this connection. When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
  final String serviceAccountId;

  /// Type of the Cloud SQL database.
  final String type;

  /// Creates a new [CloudSqlPropertiesResponse].
  /// [credential] Input only. Cloud SQL credential.
  /// [database] Database name.
  /// [instanceId] Cloud SQL instance ID in the form `project:location:instance`.
  /// [serviceAccountId] The account ID of the service used for the purpose of this connection. When the connection is used in the context of an operation in BigQuery, this service account will serve as the identity being used for connecting to the CloudSQL instance specified in this connection.
  /// [type] Type of the Cloud SQL database.
  CloudSqlPropertiesResponse({
    required this.credential,
    required this.database,
    required this.instanceId,
    required this.serviceAccountId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credential'] = credential.toMap();
    map['database'] = database;
    map['instanceId'] = instanceId;
    map['serviceAccountId'] = serviceAccountId;
    map['type'] = type;
    return map;
  }

  factory CloudSqlPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlPropertiesResponse(
      credential: CloudSqlCredentialResponse.fromMap(
          (map['credential'] as Map).cast<String, dynamic>()),
      database: map['database'] as String,
      instanceId: map['instanceId'] as String,
      serviceAccountId: map['serviceAccountId'] as String,
      type: map['type'] as String,
    );
  }
}
