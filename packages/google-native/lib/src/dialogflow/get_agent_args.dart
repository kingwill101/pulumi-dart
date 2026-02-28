// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_agent_args_doc}
/// Arguments for getAgent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_agent_args_doc}
class GetAgentArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentArgs].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAgentArgs({
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

  factory GetAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentArgs(
      agentId: map['agentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
