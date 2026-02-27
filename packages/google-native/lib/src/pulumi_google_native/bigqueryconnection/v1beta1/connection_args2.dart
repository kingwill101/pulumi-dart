// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cloud_sql_properties.dart';

/// The set of arguments for Connection.
class ConnectionArgs2 {
  /// Cloud SQL properties.
  final Input<CloudSqlProperties>? cloudSql;

  /// Optional. Connection id that should be assigned to the created connection.
  final Input<String>? connectionId;

  /// User provided description.
  final Input<String>? description;

  /// User provided display name for the connection.
  final Input<String>? friendlyName;
  final Input<String>? location;

  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  final Input<String>? name;
  final Input<String>? project;

  ConnectionArgs2({
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
      map['cloudSql'] =
          Input.mapOptionalInputValue<CloudSqlProperties, Map<String, dynamic>>(
              cloudSqlValue, (value) => value.toMap());
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

  factory ConnectionArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs2(
      cloudSql: Input.asOptionalInput<CloudSqlProperties>(map['cloudSql']),
      connectionId: Input.asOptionalInput<String>(map['connectionId']),
      description: Input.asOptionalInput<String>(map['description']),
      friendlyName: Input.asOptionalInput<String>(map['friendlyName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
