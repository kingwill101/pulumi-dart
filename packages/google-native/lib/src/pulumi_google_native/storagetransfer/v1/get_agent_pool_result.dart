// ignore_for_file: unused_element, unnecessary_cast

import 'bandwidth_limit_response.dart';

/// Result data returned by getAgentPool.
class GetAgentPoolResult {
  /// Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.
  final BandwidthLimitResponse bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  final String displayName;

  /// Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  final String name;

  /// Specifies the state of the AgentPool.
  final String state;

  GetAgentPoolResult({
    required this.bandwidthLimit,
    required this.displayName,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bandwidthLimit'] = bandwidthLimit.toMap();
    map['displayName'] = displayName;
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory GetAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolResult(
      bandwidthLimit: BandwidthLimitResponse.fromMap(
          (map['bandwidthLimit'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
