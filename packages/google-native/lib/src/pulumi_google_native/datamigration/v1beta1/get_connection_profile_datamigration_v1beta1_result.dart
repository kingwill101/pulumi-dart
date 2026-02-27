// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_connection_profile_response_datamigration_v1beta1.dart';
import 'my_sql_connection_profile_response_datamigration_v1beta1.dart';
import 'status_response_datamigration_v1beta1.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileDatamigrationV1beta1Result {
  /// A CloudSQL database connection profile.
  final CloudSqlConnectionProfileResponseDatamigrationV1beta1 cloudsql;

  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// The connection profile display name.
  final String displayName;

  /// The error details in case of state FAILED.
  final StatusResponseDatamigrationV1beta1 error;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String> labels;

  /// A MySQL database connection profile.
  final MySqlConnectionProfileResponseDatamigrationV1beta1 mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final String name;

  /// The database provider.
  final String provider;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final String state;

  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String updateTime;

  GetConnectionProfileDatamigrationV1beta1Result({
    required this.cloudsql,
    required this.createTime,
    required this.displayName,
    required this.error,
    required this.labels,
    required this.mysql,
    required this.name,
    required this.provider,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudsql'] = cloudsql.toMap();
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['mysql'] = mysql.toMap();
    map['name'] = name;
    map['provider'] = provider;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectionProfileDatamigrationV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionProfileDatamigrationV1beta1Result(
      cloudsql: CloudSqlConnectionProfileResponseDatamigrationV1beta1.fromMap(
          (map['cloudsql'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error: StatusResponseDatamigrationV1beta1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mysql: MySqlConnectionProfileResponseDatamigrationV1beta1.fromMap(
          (map['mysql'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provider: map['provider'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
