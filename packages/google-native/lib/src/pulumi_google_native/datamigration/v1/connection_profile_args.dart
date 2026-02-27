// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'alloy_db_connection_profile.dart';
import 'cloud_sql_connection_profile.dart';
import 'connection_profile_provider.dart';
import 'connection_profile_state.dart';
import 'my_sql_connection_profile.dart';
import 'oracle_connection_profile.dart';
import 'postgre_sql_connection_profile.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileArgs {
  /// An AlloyDB cluster connection profile.
  final Input<AlloyDbConnectionProfile>? alloydb;

  /// A CloudSQL database connection profile.
  final Input<CloudSqlConnectionProfile>? cloudsql;

  /// Required. The connection profile identifier.
  final Input<String> connectionProfileId;

  /// The connection profile display name.
  final Input<String>? displayName;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A MySQL database connection profile.
  final Input<MySqlConnectionProfile>? mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final Input<String>? name;

  /// An Oracle database connection profile.
  final Input<OracleConnectionProfile>? oracle;

  /// A PostgreSQL database connection profile.
  final Input<PostgreSqlConnectionProfile>? postgresql;
  final Input<String>? project;

  /// The database provider.
  final Input<ConnectionProfileProvider>? provider;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.
  final Input<bool>? skipValidation;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final Input<ConnectionProfileState>? state;

  ConnectionProfileArgs({
    this.alloydb,
    this.cloudsql,
    required this.connectionProfileId,
    this.displayName,
    this.labels,
    this.location,
    this.mysql,
    this.name,
    this.oracle,
    this.postgresql,
    this.project,
    this.provider,
    this.requestId,
    this.skipValidation,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alloydbValue = alloydb;
    if (alloydbValue != null) {
      map['alloydb'] = Input.mapOptionalInputValue<AlloyDbConnectionProfile,
          Map<String, dynamic>>(alloydbValue, (value) => value.toMap());
    }
    final cloudsqlValue = cloudsql;
    if (cloudsqlValue != null) {
      map['cloudsql'] = Input.mapOptionalInputValue<CloudSqlConnectionProfile,
          Map<String, dynamic>>(cloudsqlValue, (value) => value.toMap());
    }
    map['connectionProfileId'] = connectionProfileId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mysqlValue = mysql;
    if (mysqlValue != null) {
      map['mysql'] = Input.mapOptionalInputValue<MySqlConnectionProfile,
          Map<String, dynamic>>(mysqlValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final oracleValue = oracle;
    if (oracleValue != null) {
      map['oracle'] = Input.mapOptionalInputValue<OracleConnectionProfile,
          Map<String, dynamic>>(oracleValue, (value) => value.toMap());
    }
    final postgresqlValue = postgresql;
    if (postgresqlValue != null) {
      map['postgresql'] = Input.mapOptionalInputValue<
          PostgreSqlConnectionProfile,
          Map<String, dynamic>>(postgresqlValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final providerValue = provider;
    if (providerValue != null) {
      map['provider'] =
          Input.mapOptionalInputValue<ConnectionProfileProvider, String>(
              providerValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final skipValidationValue = skipValidation;
    if (skipValidationValue != null) {
      map['skipValidation'] = skipValidationValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          Input.mapOptionalInputValue<ConnectionProfileState, String>(
              stateValue, (value) => value.value);
    }
    return map;
  }

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      alloydb: Input.asOptionalInput<AlloyDbConnectionProfile>(map['alloydb']),
      cloudsql:
          Input.asOptionalInput<CloudSqlConnectionProfile>(map['cloudsql']),
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mysql: Input.asOptionalInput<MySqlConnectionProfile>(map['mysql']),
      name: Input.asOptionalInput<String>(map['name']),
      oracle: Input.asOptionalInput<OracleConnectionProfile>(map['oracle']),
      postgresql:
          Input.asOptionalInput<PostgreSqlConnectionProfile>(map['postgresql']),
      project: Input.asOptionalInput<String>(map['project']),
      provider:
          Input.asOptionalInput<ConnectionProfileProvider>(map['provider']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      skipValidation: Input.asOptionalInput<bool>(map['skipValidation']),
      state: Input.asOptionalInput<ConnectionProfileState>(map['state']),
    );
  }
}
