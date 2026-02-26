// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bandwidth_limit.dart';

/// The set of arguments for AgentPool.
class AgentPoolArgs {
  /// Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  final Input<String> agentPoolId;

  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  final Input<BandwidthLimit>? bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  final Input<String>? displayName;

  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  final Input<String>? name;
  final Input<String>? project;

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
      map['bandwidthLimit'] =
          Input.mapOptionalInputValue<BandwidthLimit, Map<String, dynamic>>(
              bandwidthLimitValue, (value) => value.toMap());
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
      agentPoolId: Input.asInput<String>(map['agentPoolId']),
      bandwidthLimit:
          Input.asOptionalInput<BandwidthLimit>(map['bandwidthLimit']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
