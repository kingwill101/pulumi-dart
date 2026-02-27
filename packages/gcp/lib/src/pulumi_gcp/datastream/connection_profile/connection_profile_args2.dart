// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_profile_forward_ssh_connectivity/connection_profile_forward_ssh_connectivity.dart';
import '../connection_profile_gcs_profile/connection_profile_gcs_profile.dart';
import '../connection_profile_mongodb_profile/connection_profile_mongodb_profile.dart';
import '../connection_profile_mysql_profile/connection_profile_mysql_profile.dart';
import '../connection_profile_oracle_profile/connection_profile_oracle_profile.dart';
import '../connection_profile_postgresql_profile/connection_profile_postgresql_profile.dart';
import '../connection_profile_private_connectivity/connection_profile_private_connectivity.dart';
import '../connection_profile_salesforce_profile/connection_profile_salesforce_profile.dart';
import '../connection_profile_spanner_profile/connection_profile_spanner_profile.dart';
import '../connection_profile_sql_server_profile/connection_profile_sql_server_profile.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileArgs2 {
  /// BigQuery warehouse profile.
  final Input<Map<String, dynamic>>? bigqueryProfile;

  /// The connection profile identifier.
  final Input<String> connectionProfileId;

  /// Create the connection profile without validating it.
  final Input<bool>? createWithoutValidation;

  /// Display name.
  final Input<String> displayName;

  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  final Input<ConnectionProfileForwardSshConnectivity>? forwardSshConnectivity;

  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  final Input<ConnectionProfileGcsProfile>? gcsProfile;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the location this connection profile is located in.
  final Input<String> location;

  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  final Input<ConnectionProfileMongodbProfile>? mongodbProfile;

  /// MySQL database profile.
  /// Structure is documented below.
  final Input<ConnectionProfileMysqlProfile>? mysqlProfile;

  /// Oracle database profile.
  /// Structure is documented below.
  final Input<ConnectionProfileOracleProfile>? oracleProfile;

  /// PostgreSQL database profile.
  /// Structure is documented below.
  final Input<ConnectionProfilePostgresqlProfile>? postgresqlProfile;

  /// Private connectivity.
  /// Structure is documented below.
  final Input<ConnectionProfilePrivateConnectivity>? privateConnectivity;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Salesforce profile.
  /// Structure is documented below.
  final Input<ConnectionProfileSalesforceProfile>? salesforceProfile;

  /// Spanner profile.
  /// Structure is documented below.
  final Input<ConnectionProfileSpannerProfile>? spannerProfile;

  /// SQL Server database profile.
  /// Structure is documented below.
  final Input<ConnectionProfileSqlServerProfile>? sqlServerProfile;

  ConnectionProfileArgs2({
    this.bigqueryProfile,
    required this.connectionProfileId,
    this.createWithoutValidation,
    required this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    required this.location,
    this.mongodbProfile,
    this.mysqlProfile,
    this.oracleProfile,
    this.postgresqlProfile,
    this.privateConnectivity,
    this.project,
    this.salesforceProfile,
    this.spannerProfile,
    this.sqlServerProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryProfileValue = bigqueryProfile;
    if (bigqueryProfileValue != null) {
      map['bigqueryProfile'] = bigqueryProfileValue;
    }
    map['connectionProfileId'] = connectionProfileId;
    final createWithoutValidationValue = createWithoutValidation;
    if (createWithoutValidationValue != null) {
      map['createWithoutValidation'] = createWithoutValidationValue;
    }
    map['displayName'] = displayName;
    final forwardSshConnectivityValue = forwardSshConnectivity;
    if (forwardSshConnectivityValue != null) {
      map['forwardSshConnectivity'] = Input.mapOptionalInputValue<
              ConnectionProfileForwardSshConnectivity, Map<String, dynamic>>(
          forwardSshConnectivityValue, (value) => value.toMap());
    }
    final gcsProfileValue = gcsProfile;
    if (gcsProfileValue != null) {
      map['gcsProfile'] = Input.mapOptionalInputValue<
          ConnectionProfileGcsProfile,
          Map<String, dynamic>>(gcsProfileValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final mongodbProfileValue = mongodbProfile;
    if (mongodbProfileValue != null) {
      map['mongodbProfile'] = Input.mapOptionalInputValue<
          ConnectionProfileMongodbProfile,
          Map<String, dynamic>>(mongodbProfileValue, (value) => value.toMap());
    }
    final mysqlProfileValue = mysqlProfile;
    if (mysqlProfileValue != null) {
      map['mysqlProfile'] = Input.mapOptionalInputValue<
          ConnectionProfileMysqlProfile,
          Map<String, dynamic>>(mysqlProfileValue, (value) => value.toMap());
    }
    final oracleProfileValue = oracleProfile;
    if (oracleProfileValue != null) {
      map['oracleProfile'] = Input.mapOptionalInputValue<
          ConnectionProfileOracleProfile,
          Map<String, dynamic>>(oracleProfileValue, (value) => value.toMap());
    }
    final postgresqlProfileValue = postgresqlProfile;
    if (postgresqlProfileValue != null) {
      map['postgresqlProfile'] = Input.mapOptionalInputValue<
              ConnectionProfilePostgresqlProfile, Map<String, dynamic>>(
          postgresqlProfileValue, (value) => value.toMap());
    }
    final privateConnectivityValue = privateConnectivity;
    if (privateConnectivityValue != null) {
      map['privateConnectivity'] = Input.mapOptionalInputValue<
              ConnectionProfilePrivateConnectivity, Map<String, dynamic>>(
          privateConnectivityValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final salesforceProfileValue = salesforceProfile;
    if (salesforceProfileValue != null) {
      map['salesforceProfile'] = Input.mapOptionalInputValue<
              ConnectionProfileSalesforceProfile, Map<String, dynamic>>(
          salesforceProfileValue, (value) => value.toMap());
    }
    final spannerProfileValue = spannerProfile;
    if (spannerProfileValue != null) {
      map['spannerProfile'] = Input.mapOptionalInputValue<
          ConnectionProfileSpannerProfile,
          Map<String, dynamic>>(spannerProfileValue, (value) => value.toMap());
    }
    final sqlServerProfileValue = sqlServerProfile;
    if (sqlServerProfileValue != null) {
      map['sqlServerProfile'] = Input.mapOptionalInputValue<
              ConnectionProfileSqlServerProfile, Map<String, dynamic>>(
          sqlServerProfileValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionProfileArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs2(
      bigqueryProfile:
          Input.asOptionalInput<Map<String, dynamic>>(map['bigqueryProfile']),
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      createWithoutValidation:
          Input.asOptionalInput<bool>(map['createWithoutValidation']),
      displayName: Input.asInput<String>(map['displayName']),
      forwardSshConnectivity:
          Input.asOptionalInput<ConnectionProfileForwardSshConnectivity>(
              map['forwardSshConnectivity']),
      gcsProfile:
          Input.asOptionalInput<ConnectionProfileGcsProfile>(map['gcsProfile']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      mongodbProfile: Input.asOptionalInput<ConnectionProfileMongodbProfile>(
          map['mongodbProfile']),
      mysqlProfile: Input.asOptionalInput<ConnectionProfileMysqlProfile>(
          map['mysqlProfile']),
      oracleProfile: Input.asOptionalInput<ConnectionProfileOracleProfile>(
          map['oracleProfile']),
      postgresqlProfile:
          Input.asOptionalInput<ConnectionProfilePostgresqlProfile>(
              map['postgresqlProfile']),
      privateConnectivity:
          Input.asOptionalInput<ConnectionProfilePrivateConnectivity>(
              map['privateConnectivity']),
      project: Input.asOptionalInput<String>(map['project']),
      salesforceProfile:
          Input.asOptionalInput<ConnectionProfileSalesforceProfile>(
              map['salesforceProfile']),
      spannerProfile: Input.asOptionalInput<ConnectionProfileSpannerProfile>(
          map['spannerProfile']),
      sqlServerProfile:
          Input.asOptionalInput<ConnectionProfileSqlServerProfile>(
              map['sqlServerProfile']),
    );
  }
}
