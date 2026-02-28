// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb.dart';
import 'connection_profile_cloudsql.dart';
import 'connection_profile_mysql.dart';
import 'connection_profile_oracle.dart';
import 'connection_profile_postgresql.dart';

/// {@template pulumi_databasemigrationservice_connection_profile_connection_profile_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_databasemigrationservice_connection_profile_connection_profile_args_doc}
class ConnectionProfileArgs {
  /// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydb>? alloydb;

  /// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileCloudsql>? cloudsql;

  /// The ID of the connection profile.
  final pulumi.Input<String> connectionProfileId;

  /// The connection profile display name.
  final pulumi.Input<String>? displayName;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the connection profile should reside.
  final pulumi.Input<String>? location;

  /// Specifies connection parameters required specifically for MySQL databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysql>? mysql;

  /// Specifies connection parameters required specifically for Oracle databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracle>? oracle;

  /// Specifies connection parameters required specifically for PostgreSQL databases.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresql>? postgresql;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ConnectionProfileArgs].
  /// [alloydb] Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// [cloudsql] Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// [connectionProfileId] The ID of the connection profile.
  /// [displayName] The connection profile display name.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [location] The location where the connection profile should reside.
  /// [mysql] Specifies connection parameters required specifically for MySQL databases.
  /// [oracle] Specifies connection parameters required specifically for Oracle databases.
  /// [postgresql] Specifies connection parameters required specifically for PostgreSQL databases.
  /// [project] The ID of the project in which the resource belongs.
  ConnectionProfileArgs({
    ConnectionProfileAlloydb? alloydb,
    ConnectionProfileCloudsql? cloudsql,
    required String connectionProfileId,
    String? displayName,
    Map<String, String>? labels,
    String? location,
    ConnectionProfileMysql? mysql,
    ConnectionProfileOracle? oracle,
    ConnectionProfilePostgresql? postgresql,
    String? project,
  })  : alloydb =
            pulumi.Input.asOptionalInput<ConnectionProfileAlloydb>(alloydb),
        cloudsql =
            pulumi.Input.asOptionalInput<ConnectionProfileCloudsql>(cloudsql),
        connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        mysql = pulumi.Input.asOptionalInput<ConnectionProfileMysql>(mysql),
        oracle = pulumi.Input.asOptionalInput<ConnectionProfileOracle>(oracle),
        postgresql = pulumi.Input.asOptionalInput<ConnectionProfilePostgresql>(
            postgresql),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alloydbValue = alloydb;
    if (alloydbValue != null) {
      map['alloydb'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileAlloydb,
          Map<String, dynamic>>(alloydbValue, (value) => value.toMap());
    }
    final cloudsqlValue = cloudsql;
    if (cloudsqlValue != null) {
      map['cloudsql'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileCloudsql,
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
      map['mysql'] = pulumi.Input.mapOptionalInputValue<ConnectionProfileMysql,
          Map<String, dynamic>>(mysqlValue, (value) => value.toMap());
    }
    final oracleValue = oracle;
    if (oracleValue != null) {
      map['oracle'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileOracle,
          Map<String, dynamic>>(oracleValue, (value) => value.toMap());
    }
    final postgresqlValue = postgresql;
    if (postgresqlValue != null) {
      map['postgresql'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfilePostgresql,
          Map<String, dynamic>>(postgresqlValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      alloydb: map['alloydb'] == null
          ? null
          : ConnectionProfileAlloydb.fromMap(
              (map['alloydb'] as Map).cast<String, dynamic>()),
      cloudsql: map['cloudsql'] == null
          ? null
          : ConnectionProfileCloudsql.fromMap(
              (map['cloudsql'] as Map).cast<String, dynamic>()),
      connectionProfileId: map['connectionProfileId'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mysql: map['mysql'] == null
          ? null
          : ConnectionProfileMysql.fromMap(
              (map['mysql'] as Map).cast<String, dynamic>()),
      oracle: map['oracle'] == null
          ? null
          : ConnectionProfileOracle.fromMap(
              (map['oracle'] as Map).cast<String, dynamic>()),
      postgresql: map['postgresql'] == null
          ? null
          : ConnectionProfilePostgresql.fromMap(
              (map['postgresql'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
