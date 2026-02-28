// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagetransfer_v1_get_agent_pool_args_doc}
/// Arguments for getAgentPool.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_get_agent_pool_args_doc}
class GetAgentPoolArgs {
  final pulumi.Input<String> agentPoolId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAgentPoolArgs].
  /// [agentPoolId] Required.
  /// [project] Optional.
  GetAgentPoolArgs({
    required String agentPoolId,
    String? project,
  }) :
      agentPoolId = pulumi.Input.asInput<String>(agentPoolId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': agentPoolId,
      'project': ?project,
    };
  }

  factory GetAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolArgs(
      agentPoolId: map['agentPoolId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

