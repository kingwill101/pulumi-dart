// ignore_for_file: unused_element, unnecessary_cast

import 'alloy_db_connection_profile_response.dart';
import 'cloud_sql_connection_profile_response.dart';
import 'my_sql_connection_profile_response.dart';
import 'oracle_connection_profile_response.dart';
import 'postgre_sql_connection_profile_response.dart';
import 'status_response_datamigration_v1.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileResult {
  /// An AlloyDB cluster connection profile.
  final AlloyDbConnectionProfileResponse alloydb;

  /// A CloudSQL database connection profile.
  final CloudSqlConnectionProfileResponse cloudsql;

  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// The connection profile display name.
  final String displayName;

  /// The error details in case of state FAILED.
  final StatusResponseDatamigrationV1 error;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String> labels;

  /// A MySQL database connection profile.
  final MySqlConnectionProfileResponse mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final String name;

  /// An Oracle database connection profile.
  final OracleConnectionProfileResponse oracle;

  /// A PostgreSQL database connection profile.
  final PostgreSqlConnectionProfileResponse postgresql;

  /// The database provider.
  final String provider;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final String state;

  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  GetConnectionProfileResult({
    required this.alloydb,
    required this.cloudsql,
    required this.createTime,
    required this.displayName,
    required this.error,
    required this.labels,
    required this.mysql,
    required this.name,
    required this.oracle,
    required this.postgresql,
    required this.provider,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alloydb'] = alloydb.toMap();
    map['cloudsql'] = cloudsql.toMap();
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['mysql'] = mysql.toMap();
    map['name'] = name;
    map['oracle'] = oracle.toMap();
    map['postgresql'] = postgresql.toMap();
    map['provider'] = provider;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectionProfileResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileResult(
      alloydb: AlloyDbConnectionProfileResponse.fromMap(
          (map['alloydb'] as Map).cast<String, dynamic>()),
      cloudsql: CloudSqlConnectionProfileResponse.fromMap(
          (map['cloudsql'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error: StatusResponseDatamigrationV1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mysql: MySqlConnectionProfileResponse.fromMap(
          (map['mysql'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oracle: OracleConnectionProfileResponse.fromMap(
          (map['oracle'] as Map).cast<String, dynamic>()),
      postgresql: PostgreSqlConnectionProfileResponse.fromMap(
          (map['postgresql'] as Map).cast<String, dynamic>()),
      provider: map['provider'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
