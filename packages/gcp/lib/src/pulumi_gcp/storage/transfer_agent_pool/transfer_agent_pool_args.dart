// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../transfer_agent_pool_bandwidth_limit/transfer_agent_pool_bandwidth_limit.dart';

/// The set of arguments for TransferAgentPool.
class TransferAgentPoolArgs {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  /// Structure is documented below.
  final Input<TransferAgentPoolBandwidthLimit>? bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  final Input<String>? displayName;

  /// The ID of the agent pool to create.
  /// The agentPoolId must meet the following requirements:
  /// * Length of 128 characters or less.
  /// * Not start with the string goog.
  /// * Start with a lowercase ASCII character, followed by:
  /// * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).
  /// * One or more numerals or lowercase ASCII characters.
  /// As expressed by the regular expression: ^(?!goog)a-z?$.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  TransferAgentPoolArgs({
    this.bandwidthLimit,
    this.displayName,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bandwidthLimitValue = bandwidthLimit;
    if (bandwidthLimitValue != null) {
      map['bandwidthLimit'] = Input.mapOptionalInputValue<
          TransferAgentPoolBandwidthLimit,
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

  factory TransferAgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return TransferAgentPoolArgs(
      bandwidthLimit: Input.asOptionalInput<TransferAgentPoolBandwidthLimit>(
          map['bandwidthLimit']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
