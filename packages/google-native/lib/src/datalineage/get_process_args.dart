// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalineage_v1_get_process_args_doc}
/// Arguments for getProcess.
/// {@endtemplate}
/// {@macro pulumi_datalineage_v1_get_process_args_doc}
class GetProcessArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProcessArgs].
  /// [location] Required.
  /// [processId] Required.
  /// [project] Optional.
  GetProcessArgs({
    required String location,
    required String processId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        processId = pulumi.Input.asInput<String>(processId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['processId'] = processId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProcessArgs.fromMap(Map<String, dynamic> map) {
    return GetProcessArgs(
      location: map['location'] as String,
      processId: map['processId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
