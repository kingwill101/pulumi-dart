// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v2_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_connectors_v2_get_entity_args_doc}
class GetEntityArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityArgs].
  /// [connectionId] Required.
  /// [entityId] Required.
  /// [entityTypeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntityArgs({
    required String connectionId,
    required String entityId,
    required String entityTypeId,
    required String location,
    String? project,
  })  : connectionId = pulumi.Input.asInput<String>(connectionId),
        entityId = pulumi.Input.asInput<String>(entityId),
        entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      connectionId: map['connectionId'] as String,
      entityId: map['entityId'] as String,
      entityTypeId: map['entityTypeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
