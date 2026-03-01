// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_agent_pool_bandwidth_limit.dart';

/// {@template pulumi_storage_transfer_agent_pool_transfer_agent_pool_args_doc}
/// The set of arguments for TransferAgentPool.
/// {@endtemplate}
/// {@macro pulumi_storage_transfer_agent_pool_transfer_agent_pool_args_doc}
class TransferAgentPoolArgs {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// Structure is documented below.
  final pulumi.Input<TransferAgentPoolBandwidthLimit>? bandwidthLimit;
  /// Specifies the client-specified AgentPool description.
  final pulumi.Input<String>? displayName;
  /// The ID of the agent pool to create.
  /// The agentPoolId must meet the following requirements:
  /// * Length of 128 characters or less.
  /// * Not start with the string goog.
  /// * Start with a lowercase ASCII character, followed by:
  /// * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  /// * One or more numerals or lowercase ASCII characters.
  /// As expressed by the regular expression: ^(?!goog)a-z?$.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [TransferAgentPoolArgs].
  /// [bandwidthLimit] Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// [displayName] Specifies the client-specified AgentPool description.
  /// [name] The ID of the agent pool to create.
  /// [project] The ID of the project in which the resource belongs.
  TransferAgentPoolArgs({
    TransferAgentPoolBandwidthLimit? bandwidthLimit,
    String? displayName,
    String? name,
    String? project,
  }) :
      bandwidthLimit = pulumi.Input.asOptionalInput<TransferAgentPoolBandwidthLimit>(bandwidthLimit),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthLimit': ?pulumi.Input.mapOptionalInputValue<TransferAgentPoolBandwidthLimit, Map<String, dynamic>>(bandwidthLimit, (value) => value.toMap()),
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
    };
  }

  factory TransferAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return TransferAgentPoolArgs(
      bandwidthLimit: map['bandwidthLimit'] == null ? null : TransferAgentPoolBandwidthLimit.fromMap((map['bandwidthLimit'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

