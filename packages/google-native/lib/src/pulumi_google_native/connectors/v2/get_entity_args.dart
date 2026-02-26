// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEntity.
class GetEntityArgs {
  final Input<String> connectionId;
  final Input<String> entityId;
  final Input<String> entityTypeId;
  final Input<String> location;
  final Input<String>? project;

  GetEntityArgs({
    required this.connectionId,
    required this.entityId,
    required this.entityTypeId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['entityId'] = entityId;
    map['entityTypeId'] = entityTypeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      connectionId: Input.asInput<String>(map['connectionId']),
      entityId: Input.asInput<String>(map['entityId']),
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
