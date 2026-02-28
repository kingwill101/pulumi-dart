// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_entity_args_doc}
class GetEntityArgs {
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;
  final pulumi.Input<String> zone;

  /// Creates a new [GetEntityArgs].
  /// [entityId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  /// [zone] Required.
  GetEntityArgs({
    required String entityId,
    required String lakeId,
    required String location,
    String? project,
    String? view,
    required String zone,
  })  : entityId = pulumi.Input.asInput<String>(entityId),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      entityId: map['entityId'] as String,
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
      zone: map['zone'] as String,
    );
  }
}
