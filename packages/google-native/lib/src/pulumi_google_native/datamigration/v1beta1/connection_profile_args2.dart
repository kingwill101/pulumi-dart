// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cloud_sql_connection_profile2.dart';
import 'connection_profile_provider2.dart';
import 'connection_profile_state2.dart';
import 'my_sql_connection_profile2.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileArgs2 {
  /// A CloudSQL database connection profile.
  final Input<CloudSqlConnectionProfile2>? cloudsql;

  /// Required. The connection profile identifier.
  final Input<String> connectionProfileId;

  /// The connection profile display name.
  final Input<String>? displayName;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A MySQL database connection profile.
  final Input<MySqlConnectionProfile2>? mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final Input<String>? name;
  final Input<String>? project;

  /// The database provider.
  final Input<ConnectionProfileProvider2>? provider;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final Input<ConnectionProfileState2>? state;

  ConnectionProfileArgs2({
    this.cloudsql,
    required this.connectionProfileId,
    this.displayName,
    this.labels,
    this.location,
    this.mysql,
    this.name,
    this.project,
    this.provider,
    this.requestId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudsqlValue = cloudsql;
    if (cloudsqlValue != null) {
      map['cloudsql'] = Input.mapOptionalInputValue<CloudSqlConnectionProfile2,
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
      map['mysql'] = Input.mapOptionalInputValue<MySqlConnectionProfile2,
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
      map['provider'] =
          Input.mapOptionalInputValue<ConnectionProfileProvider2, String>(
              providerValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          Input.mapOptionalInputValue<ConnectionProfileState2, String>(
              stateValue, (value) => value.value);
    }
    return map;
  }

  factory ConnectionProfileArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs2(
      cloudsql:
          Input.asOptionalInput<CloudSqlConnectionProfile2>(map['cloudsql']),
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mysql: Input.asOptionalInput<MySqlConnectionProfile2>(map['mysql']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      provider:
          Input.asOptionalInput<ConnectionProfileProvider2>(map['provider']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      state: Input.asOptionalInput<ConnectionProfileState2>(map['state']),
    );
  }
}
