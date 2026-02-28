// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_agent_dialogflow_v3beta1_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_agent_dialogflow_v3beta1_args_doc}
class GetAgentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAgentDialogflowV3beta1Args({
    required String agentId,
    required String location,
    String? project,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAgentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetAgentDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
