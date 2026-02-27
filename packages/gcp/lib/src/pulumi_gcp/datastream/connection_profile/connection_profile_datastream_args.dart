// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
class ConnectionProfileDatastreamArgs {
  /// BigQuery warehouse profile.
  final pulumi.Input<Map<String, dynamic>>? bigqueryProfile;

  /// The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;

  /// Create the connection profile without validating it.
  final pulumi.Input<bool>? createWithoutValidation;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Forward SSH tunnel connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileForwardSshConnectivity>?
      forwardSshConnectivity;

  /// Cloud Storage bucket profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileGcsProfile>? gcsProfile;

  /// Labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the location this connection profile is located in.
  final pulumi.Input<String> location;

  /// Configuration for connecting to a MongoDB database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMongodbProfile>? mongodbProfile;

  /// MySQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysqlProfile>? mysqlProfile;

  /// Oracle database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracleProfile>? oracleProfile;

  /// PostgreSQL database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlProfile>? postgresqlProfile;

  /// Private connectivity.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePrivateConnectivity>? privateConnectivity;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Salesforce profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSalesforceProfile>? salesforceProfile;

  /// Spanner profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSpannerProfile>? spannerProfile;

  /// SQL Server database profile.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileSqlServerProfile>? sqlServerProfile;

  ConnectionProfileDatastreamArgs({
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
      map['forwardSshConnectivity'] = pulumi.Input.mapOptionalInputValue<
              ConnectionProfileForwardSshConnectivity, Map<String, dynamic>>(
          forwardSshConnectivityValue, (value) => value.toMap());
    }
    final gcsProfileValue = gcsProfile;
    if (gcsProfileValue != null) {
      map['gcsProfile'] = pulumi.Input.mapOptionalInputValue<
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
      map['mongodbProfile'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileMongodbProfile,
          Map<String, dynamic>>(mongodbProfileValue, (value) => value.toMap());
    }
    final mysqlProfileValue = mysqlProfile;
    if (mysqlProfileValue != null) {
      map['mysqlProfile'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileMysqlProfile,
          Map<String, dynamic>>(mysqlProfileValue, (value) => value.toMap());
    }
    final oracleProfileValue = oracleProfile;
    if (oracleProfileValue != null) {
      map['oracleProfile'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileOracleProfile,
          Map<String, dynamic>>(oracleProfileValue, (value) => value.toMap());
    }
    final postgresqlProfileValue = postgresqlProfile;
    if (postgresqlProfileValue != null) {
      map['postgresqlProfile'] = pulumi.Input.mapOptionalInputValue<
              ConnectionProfilePostgresqlProfile, Map<String, dynamic>>(
          postgresqlProfileValue, (value) => value.toMap());
    }
    final privateConnectivityValue = privateConnectivity;
    if (privateConnectivityValue != null) {
      map['privateConnectivity'] = pulumi.Input.mapOptionalInputValue<
              ConnectionProfilePrivateConnectivity, Map<String, dynamic>>(
          privateConnectivityValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final salesforceProfileValue = salesforceProfile;
    if (salesforceProfileValue != null) {
      map['salesforceProfile'] = pulumi.Input.mapOptionalInputValue<
              ConnectionProfileSalesforceProfile, Map<String, dynamic>>(
          salesforceProfileValue, (value) => value.toMap());
    }
    final spannerProfileValue = spannerProfile;
    if (spannerProfileValue != null) {
      map['spannerProfile'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileSpannerProfile,
          Map<String, dynamic>>(spannerProfileValue, (value) => value.toMap());
    }
    final sqlServerProfileValue = sqlServerProfile;
    if (sqlServerProfileValue != null) {
      map['sqlServerProfile'] = pulumi.Input.mapOptionalInputValue<
              ConnectionProfileSqlServerProfile, Map<String, dynamic>>(
          sqlServerProfileValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionProfileDatastreamArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileDatastreamArgs(
      bigqueryProfile: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['bigqueryProfile']),
      connectionProfileId:
          pulumi.Input.asInput<String>(map['connectionProfileId']),
      createWithoutValidation:
          pulumi.Input.asOptionalInput<bool>(map['createWithoutValidation']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      forwardSshConnectivity:
          pulumi.Input.asOptionalInput<ConnectionProfileForwardSshConnectivity>(
              map['forwardSshConnectivity']),
      gcsProfile: pulumi.Input.asOptionalInput<ConnectionProfileGcsProfile>(
          map['gcsProfile']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      mongodbProfile:
          pulumi.Input.asOptionalInput<ConnectionProfileMongodbProfile>(
              map['mongodbProfile']),
      mysqlProfile: pulumi.Input.asOptionalInput<ConnectionProfileMysqlProfile>(
          map['mysqlProfile']),
      oracleProfile:
          pulumi.Input.asOptionalInput<ConnectionProfileOracleProfile>(
              map['oracleProfile']),
      postgresqlProfile:
          pulumi.Input.asOptionalInput<ConnectionProfilePostgresqlProfile>(
              map['postgresqlProfile']),
      privateConnectivity:
          pulumi.Input.asOptionalInput<ConnectionProfilePrivateConnectivity>(
              map['privateConnectivity']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      salesforceProfile:
          pulumi.Input.asOptionalInput<ConnectionProfileSalesforceProfile>(
              map['salesforceProfile']),
      spannerProfile:
          pulumi.Input.asOptionalInput<ConnectionProfileSpannerProfile>(
              map['spannerProfile']),
      sqlServerProfile:
          pulumi.Input.asOptionalInput<ConnectionProfileSqlServerProfile>(
              map['sqlServerProfile']),
    );
  }
}
