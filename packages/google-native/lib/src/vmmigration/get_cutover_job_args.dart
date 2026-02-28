// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_cutover_job_args_doc}
/// Arguments for getCutoverJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_cutover_job_args_doc}
class GetCutoverJobArgs {
  final pulumi.Input<String> cutoverJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetCutoverJobArgs].
  /// [cutoverJobId] Required.
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetCutoverJobArgs({
    required String cutoverJobId,
    required String location,
    required String migratingVmId,
    String? project,
    required String sourceId,
  })  : cutoverJobId = pulumi.Input.asInput<String>(cutoverJobId),
        location = pulumi.Input.asInput<String>(location),
        migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
        project = pulumi.Input.asOptionalInput<String>(project),
        sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cutoverJobId'] = cutoverJobId;
    map['location'] = location;
    map['migratingVmId'] = migratingVmId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetCutoverJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobArgs(
      cutoverJobId: map['cutoverJobId'] as String,
      location: map['location'] as String,
      migratingVmId: map['migratingVmId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceId: map['sourceId'] as String,
    );
  }
}
