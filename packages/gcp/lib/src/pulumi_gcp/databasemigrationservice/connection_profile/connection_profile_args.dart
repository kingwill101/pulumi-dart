// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_profile_alloydb/connection_profile_alloydb.dart';
import '../connection_profile_cloudsql/connection_profile_cloudsql.dart';
import '../connection_profile_mysql/connection_profile_mysql.dart';
import '../connection_profile_oracle/connection_profile_oracle.dart';
import '../connection_profile_postgresql/connection_profile_postgresql.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileArgs {
  /// Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.
  /// Structure is documented below.
  final Input<ConnectionProfileAlloydb>? alloydb;

  /// Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.
  /// Structure is documented below.
  final Input<ConnectionProfileCloudsql>? cloudsql;

  /// The ID of the connection profile.
  final Input<String> connectionProfileId;

  /// The connection profile display name.
  final Input<String>? displayName;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where the connection profile should reside.
  final Input<String>? location;

  /// Specifies connection parameters required specifically for MySQL databases.
  /// Structure is documented below.
  final Input<ConnectionProfileMysql>? mysql;

  /// Specifies connection parameters required specifically for Oracle databases.
  /// Structure is documented below.
  final Input<ConnectionProfileOracle>? oracle;

  /// Specifies connection parameters required specifically for PostgreSQL databases.
  /// Structure is documented below.
  final Input<ConnectionProfilePostgresql>? postgresql;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ConnectionProfileArgs({
    this.alloydb,
    this.cloudsql,
    required this.connectionProfileId,
    this.displayName,
    this.labels,
    this.location,
    this.mysql,
    this.oracle,
    this.postgresql,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alloydbValue = alloydb;
    if (alloydbValue != null) {
      map['alloydb'] = Input.mapOptionalInputValue<ConnectionProfileAlloydb,
          Map<String, dynamic>>(alloydbValue, (value) => value.toMap());
    }
    final cloudsqlValue = cloudsql;
    if (cloudsqlValue != null) {
      map['cloudsql'] = Input.mapOptionalInputValue<ConnectionProfileCloudsql,
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
      map['mysql'] = Input.mapOptionalInputValue<ConnectionProfileMysql,
          Map<String, dynamic>>(mysqlValue, (value) => value.toMap());
    }
    final oracleValue = oracle;
    if (oracleValue != null) {
      map['oracle'] = Input.mapOptionalInputValue<ConnectionProfileOracle,
          Map<String, dynamic>>(oracleValue, (value) => value.toMap());
    }
    final postgresqlValue = postgresql;
    if (postgresqlValue != null) {
      map['postgresql'] = Input.mapOptionalInputValue<
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
      alloydb: Input.asOptionalInput<ConnectionProfileAlloydb>(map['alloydb']),
      cloudsql:
          Input.asOptionalInput<ConnectionProfileCloudsql>(map['cloudsql']),
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mysql: Input.asOptionalInput<ConnectionProfileMysql>(map['mysql']),
      oracle: Input.asOptionalInput<ConnectionProfileOracle>(map['oracle']),
      postgresql:
          Input.asOptionalInput<ConnectionProfilePostgresql>(map['postgresql']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
