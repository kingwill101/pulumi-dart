// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_limit.dart';

/// The set of arguments for AgentPool.
class AgentPoolArgs {
  /// Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  final pulumi.Input<String> agentPoolId;

  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  final pulumi.Input<BandwidthLimit>? bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  final pulumi.Input<String>? displayName;

  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  AgentPoolArgs({
    required this.agentPoolId,
    this.bandwidthLimit,
    this.displayName,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentPoolId'] = agentPoolId;
    final bandwidthLimitValue = bandwidthLimit;
    if (bandwidthLimitValue != null) {
      map['bandwidthLimit'] = pulumi.Input.mapOptionalInputValue<BandwidthLimit,
          Map<String, dynamic>>(bandwidthLimitValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      agentPoolId: pulumi.Input.asInput<String>(map['agentPoolId']),
      bandwidthLimit:
          pulumi.Input.asOptionalInput<BandwidthLimit>(map['bandwidthLimit']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
