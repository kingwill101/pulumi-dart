// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_zone_args_doc}
/// Arguments for getZone.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_zone_args_doc}
class GetZoneArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetZoneArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetZoneArgs({
    required String lakeId,
    required String location,
    String? project,
    required String zone,
  })  : lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneArgs(
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
