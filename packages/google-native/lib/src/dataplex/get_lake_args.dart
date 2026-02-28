// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_lake_args_doc}
/// Arguments for getLake.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_lake_args_doc}
class GetLakeArgs {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLakeArgs].
  /// [lakeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLakeArgs({
    required String lakeId,
    required String location,
    String? project,
  })  : lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLakeArgs.fromMap(Map<String, dynamic> map) {
    return GetLakeArgs(
      lakeId: map['lakeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
