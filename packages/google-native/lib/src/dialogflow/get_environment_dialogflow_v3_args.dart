// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_environment_dialogflow_v3_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_environment_dialogflow_v3_args_doc}
class GetEnvironmentDialogflowV3Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEnvironmentDialogflowV3Args].
  /// [agentId] Required.
  /// [environmentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEnvironmentDialogflowV3Args({
    required String agentId,
    required String environmentId,
    required String location,
    String? project,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        environmentId = pulumi.Input.asInput<String>(environmentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEnvironmentDialogflowV3Args.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDialogflowV3Args(
      agentId: map['agentId'] as String,
      environmentId: map['environmentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
