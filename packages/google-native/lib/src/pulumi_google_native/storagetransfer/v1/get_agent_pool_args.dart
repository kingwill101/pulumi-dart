// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAgentPool.
class GetAgentPoolArgs {
  final Input<String> agentPoolId;
  final Input<String>? project;

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
      agentPoolId: Input.asInput<String>(map['agentPoolId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
