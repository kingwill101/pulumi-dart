// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_properties.dart';

/// {@template pulumi_bigqueryconnection_v1beta1_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_bigqueryconnection_v1beta1_connection_args_doc}
class ConnectionArgs {
  /// Cloud SQL properties.
  final pulumi.Input<CloudSqlProperties>? cloudSql;

  /// Optional. Connection id that should be assigned to the created connection.
  final pulumi.Input<String>? connectionId;

  /// User provided description.
  final pulumi.Input<String>? description;

  /// User provided display name for the connection.
  final pulumi.Input<String>? friendlyName;
  final pulumi.Input<String>? location;

  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ConnectionArgs].
  /// [cloudSql] Cloud SQL properties.
  /// [connectionId] Optional. Connection id that should be assigned to the created connection.
  /// [description] User provided description.
  /// [friendlyName] User provided display name for the connection.
  /// [location] Optional.
  /// [name] The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  /// [project] Optional.
  ConnectionArgs({
    CloudSqlProperties? cloudSql,
    String? connectionId,
    String? description,
    String? friendlyName,
    String? location,
    String? name,
    String? project,
  })  : cloudSql = pulumi.Input.asOptionalInput<CloudSqlProperties>(cloudSql),
        connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
        description = pulumi.Input.asOptionalInput<String>(description),
        friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudSqlValue = cloudSql;
    if (cloudSqlValue != null) {
      map['cloudSql'] = pulumi.Input.mapOptionalInputValue<CloudSqlProperties,
          Map<String, dynamic>>(cloudSqlValue, (value) => value.toMap());
    }
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final friendlyNameValue = friendlyName;
    if (friendlyNameValue != null) {
      map['friendlyName'] = friendlyNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      cloudSql: map['cloudSql'] == null
          ? null
          : CloudSqlProperties.fromMap(
              (map['cloudSql'] as Map).cast<String, dynamic>()),
      connectionId:
          map['connectionId'] == null ? null : map['connectionId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      friendlyName:
          map['friendlyName'] == null ? null : map['friendlyName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
