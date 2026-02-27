// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_properties.dart';

/// The set of arguments for Connection.
class ConnectionBigqueryconnectionV1beta1Args {
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

  ConnectionBigqueryconnectionV1beta1Args({
    this.cloudSql,
    this.connectionId,
    this.description,
    this.friendlyName,
    this.location,
    this.name,
    this.project,
  });

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

  factory ConnectionBigqueryconnectionV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ConnectionBigqueryconnectionV1beta1Args(
      cloudSql:
          pulumi.Input.asOptionalInput<CloudSqlProperties>(map['cloudSql']),
      connectionId: pulumi.Input.asOptionalInput<String>(map['connectionId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      friendlyName: pulumi.Input.asOptionalInput<String>(map['friendlyName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
