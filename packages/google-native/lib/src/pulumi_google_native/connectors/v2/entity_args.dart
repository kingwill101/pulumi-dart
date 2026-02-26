// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Entity.
class EntityArgs {
  final Input<String> connectionId;
  final Input<String> entityTypeId;

  /// Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  final Input<Map<String, String>>? fields;
  final Input<String>? location;
  final Input<String>? project;

  EntityArgs({
    required this.connectionId,
    required this.entityTypeId,
    this.fields,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['entityTypeId'] = entityTypeId;
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = fieldsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntityArgs.fromMap(Map<String, dynamic> map) {
    return EntityArgs(
      connectionId: Input.asInput<String>(map['connectionId']),
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      fields: Input.asOptionalInput<Map<String, String>>(map['fields']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
