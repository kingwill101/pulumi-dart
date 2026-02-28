// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_connection_profile_datamigration_v1beta1.dart';
import 'connection_profile_provider_datamigration_v1beta1.dart';
import 'connection_profile_state_datamigration_v1beta1.dart';
import 'my_sql_connection_profile_datamigration_v1beta1.dart';

/// {@template pulumi_datamigration_v1beta1_connection_profile_datamigration_v1beta1_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_connection_profile_datamigration_v1beta1_args_doc}
class ConnectionProfileDatamigrationV1beta1Args {
  /// A CloudSQL database connection profile.
  final pulumi.Input<CloudSqlConnectionProfileDatamigrationV1beta1>? cloudsql;

  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;

  /// The connection profile display name.
  final pulumi.Input<String>? displayName;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A MySQL database connection profile.
  final pulumi.Input<MySqlConnectionProfileDatamigrationV1beta1>? mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The database provider.
  final pulumi.Input<ConnectionProfileProviderDatamigrationV1beta1>? provider;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final pulumi.Input<ConnectionProfileStateDatamigrationV1beta1>? state;

  /// Creates a new [ConnectionProfileDatamigrationV1beta1Args].
  /// [cloudsql] A CloudSQL database connection profile.
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] The connection profile display name.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [location] Optional.
  /// [mysql] A MySQL database connection profile.
  /// [name] The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  /// [project] Optional.
  /// [provider] The database provider.
  /// [requestId] A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [state] The current connection profile state (e.g. DRAFT, READY, or FAILED).
  ConnectionProfileDatamigrationV1beta1Args({
    CloudSqlConnectionProfileDatamigrationV1beta1? cloudsql,
    required String connectionProfileId,
    String? displayName,
    Map<String, String>? labels,
    String? location,
    MySqlConnectionProfileDatamigrationV1beta1? mysql,
    String? name,
    String? project,
    ConnectionProfileProviderDatamigrationV1beta1? provider,
    String? requestId,
    ConnectionProfileStateDatamigrationV1beta1? state,
  })  : cloudsql = pulumi.Input.asOptionalInput<
            CloudSqlConnectionProfileDatamigrationV1beta1>(cloudsql),
        connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        mysql = pulumi.Input.asOptionalInput<
            MySqlConnectionProfileDatamigrationV1beta1>(mysql),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        provider = pulumi.Input.asOptionalInput<
            ConnectionProfileProviderDatamigrationV1beta1>(provider),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        state = pulumi.Input.asOptionalInput<
            ConnectionProfileStateDatamigrationV1beta1>(state);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudsqlValue = cloudsql;
    if (cloudsqlValue != null) {
      map['cloudsql'] = pulumi.Input.mapOptionalInputValue<
          CloudSqlConnectionProfileDatamigrationV1beta1,
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
      map['mysql'] = pulumi.Input.mapOptionalInputValue<
          MySqlConnectionProfileDatamigrationV1beta1,
          Map<String, dynamic>>(mysqlValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final providerValue = provider;
    if (providerValue != null) {
      map['provider'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileProviderDatamigrationV1beta1,
          String>(providerValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<
          ConnectionProfileStateDatamigrationV1beta1,
          String>(stateValue, (value) => value.value);
    }
    return map;
  }

  factory ConnectionProfileDatamigrationV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileDatamigrationV1beta1Args(
      cloudsql: map['cloudsql'] == null
          ? null
          : CloudSqlConnectionProfileDatamigrationV1beta1.fromMap(
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
          : MySqlConnectionProfileDatamigrationV1beta1.fromMap(
              (map['mysql'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      provider: map['provider'] == null
          ? null
          : ConnectionProfileProviderDatamigrationV1beta1.fromValue(
              map['provider'] as String),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      state: map['state'] == null
          ? null
          : ConnectionProfileStateDatamigrationV1beta1.fromValue(
              map['state'] as String),
    );
  }
}
