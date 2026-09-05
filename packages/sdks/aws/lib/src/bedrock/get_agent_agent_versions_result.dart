// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_agent_versions_agent_version_summary.dart';

/// Result data returned by getAgentAgentVersions.
class GetAgentAgentVersionsResult {
  final String? agentId;
  /// List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  final List<GetAgentAgentVersionsAgentVersionSummary>? agentVersionSummaries;
  final String? region;

  /// Creates a new [GetAgentAgentVersionsResult].
  /// [agentId] Optional.
  /// [agentVersionSummaries] List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  /// [region] Optional.
  const GetAgentAgentVersionsResult({
    this.agentId,
    this.agentVersionSummaries,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'agentVersionSummaries': ?(() { final guardedValue = agentVersionSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentAgentVersionsAgentVersionSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetAgentAgentVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentAgentVersionsResult(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersionSummaries: (() { final guardedValue = map['agentVersionSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentAgentVersionsAgentVersionSummary>(guardedValue, (value) => GetAgentAgentVersionsAgentVersionSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
