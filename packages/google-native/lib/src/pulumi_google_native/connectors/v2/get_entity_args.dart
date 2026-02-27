// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntity.
class GetEntityArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      entityId: pulumi.Input.asInput<String>(map['entityId']),
      entityTypeId: pulumi.Input.asInput<String>(map['entityTypeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
