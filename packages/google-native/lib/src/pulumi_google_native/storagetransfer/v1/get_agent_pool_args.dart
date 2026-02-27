// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAgentPool.
class GetAgentPoolArgs {
  final pulumi.Input<String> agentPoolId;
  final pulumi.Input<String>? project;

  GetAgentPoolArgs({
    required this.agentPoolId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentPoolId'] = agentPoolId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolArgs(
      agentPoolId: pulumi.Input.asInput<String>(map['agentPoolId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
