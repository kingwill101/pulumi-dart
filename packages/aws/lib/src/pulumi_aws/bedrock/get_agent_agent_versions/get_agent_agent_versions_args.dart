// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_agent_agent_versions_agent_version_summary/get_agent_agent_versions_agent_version_summary.dart';

/// Arguments for getAgentAgentVersions.
class GetAgentAgentVersionsArgs {
  /// Unique identifier of the agent.
  final Input<String> agentId;

  /// List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  final Input<List<GetAgentAgentVersionsAgentVersionSummary>>?
      agentVersionSummaries;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetAgentAgentVersionsArgs({
    required this.agentId,
    this.agentVersionSummaries,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final agentVersionSummariesValue = agentVersionSummaries;
    if (agentVersionSummariesValue != null) {
      map['agentVersionSummaries'] = Input.mapOptionalInputValue<
              List<GetAgentAgentVersionsAgentVersionSummary>,
              List<Map<String, dynamic>>>(
          agentVersionSummariesValue,
          (value) => Input.encodeList<GetAgentAgentVersionsAgentVersionSummary,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAgentAgentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentAgentVersionsArgs(
      agentId: Input.asInput<String>(map['agentId']),
      agentVersionSummaries:
          Input.asOptionalInput<List<GetAgentAgentVersionsAgentVersionSummary>>(
              map['agentVersionSummaries']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
