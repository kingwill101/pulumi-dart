// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_agent_versions_agent_version_summary.dart';

/// {@template pulumi_bedrock_get_agent_agent_versions_get_agent_agent_versions_args_doc}
/// Arguments for getAgentAgentVersions.
/// {@endtemplate}
/// {@macro pulumi_bedrock_get_agent_agent_versions_get_agent_agent_versions_args_doc}
class GetAgentAgentVersionsArgs {
  /// Unique identifier of the agent.
  final pulumi.Input<String> agentId;
  /// List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  final pulumi.Input<List<GetAgentAgentVersionsAgentVersionSummary>>? agentVersionSummaries;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAgentAgentVersionsArgs].
  /// [agentId] Unique identifier of the agent.
  /// [agentVersionSummaries] List of objects, each of which contains information about a version of the agent. See Agent Version Summaries
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetAgentAgentVersionsArgs({
    required this.agentId,
    this.agentVersionSummaries,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'agentVersionSummaries': ?pulumi.Input.mapOptionalInputValue<List<GetAgentAgentVersionsAgentVersionSummary>, List<Map<String, dynamic>>>(agentVersionSummaries, (value) => pulumi.Input.encodeList<GetAgentAgentVersionsAgentVersionSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetAgentAgentVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentAgentVersionsArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      agentVersionSummaries: (() { final guardedValue = map['agentVersionSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentAgentVersionsAgentVersionSummary>(guardedValue, (value) => GetAgentAgentVersionsAgentVersionSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

