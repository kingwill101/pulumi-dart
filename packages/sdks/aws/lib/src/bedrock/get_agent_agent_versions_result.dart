// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_agent_versions_agent_version_summary.dart';

/// Result data returned by getAgentAgentVersions.
class GetAgentAgentVersionsResult {
  final String agentId;
  /// List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  final List<GetAgentAgentVersionsAgentVersionSummary>? agentVersionSummaries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetAgentAgentVersionsResult].
  /// [agentId] Required.
  /// [agentVersionSummaries] List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetAgentAgentVersionsResult({
    required this.agentId,
    this.agentVersionSummaries,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'agentVersionSummaries': ?(() { final guardedValue = agentVersionSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentAgentVersionsAgentVersionSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
    };
  }

  factory GetAgentAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentAgentVersionsResult(
      agentId: map['agentId'] as String,
      agentVersionSummaries: (() { final guardedValue = map['agentVersionSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentAgentVersionsAgentVersionSummary>(guardedValue, (value) => GetAgentAgentVersionsAgentVersionSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

