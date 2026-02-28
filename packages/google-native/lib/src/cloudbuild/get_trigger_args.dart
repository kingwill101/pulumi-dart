// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_trigger_args_doc}
/// Arguments for getTrigger.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_trigger_args_doc}
class GetTriggerArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> triggerId;

  /// Creates a new [GetTriggerArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Required.
  /// [triggerId] Required.
  GetTriggerArgs({
    required String location,
    String? project,
    required String projectId,
    required String triggerId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        projectId = pulumi.Input.asInput<String>(projectId),
        triggerId = pulumi.Input.asInput<String>(triggerId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['triggerId'] = triggerId;
    return map;
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] as String,
      triggerId: map['triggerId'] as String,
    );
  }
}
