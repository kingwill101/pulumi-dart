// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_limit.dart';

/// {@template pulumi_storagetransfer_v1_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_agent_pool_args_doc}
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

  /// Creates a new [AgentPoolArgs].
  /// [agentPoolId] Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  /// [bandwidthLimit] Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// [displayName] Specifies the client-specified AgentPool description.
  /// [name] Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  /// [project] Optional.
  AgentPoolArgs({
    required String agentPoolId,
    BandwidthLimit? bandwidthLimit,
    String? displayName,
    String? name,
    String? project,
  }) : agentPoolId = pulumi.Input.asInput<String>(agentPoolId),
       bandwidthLimit = pulumi.Input.asOptionalInput<BandwidthLimit>(
         bandwidthLimit,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': agentPoolId,
      'bandwidthLimit':
          ?pulumi.Input.mapOptionalInputValue<
            BandwidthLimit,
            Map<String, dynamic>
          >(bandwidthLimit, (value) => value.toMap()),
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      agentPoolId: map['agentPoolId'] as String,
      bandwidthLimit: map['bandwidthLimit'] == null
          ? null
          : BandwidthLimit.fromMap(
              (map['bandwidthLimit'] as Map).cast<String, dynamic>(),
            ),
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
