// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profiling_group_agent_orchestration_config.dart';
import 'get_profiling_group_profiling_status.dart';

/// Result data returned by getProfilingGroup.
class GetProfilingGroupResult {
  /// Profiling Group agent orchestration config
  final List<GetProfilingGroupAgentOrchestrationConfig> agentOrchestrationConfigs;
  /// ARN of the Profiling Group.
  final String arn;
  /// The compute platform of the profiling group.
  final String computePlatform;
  /// Timestamp when Profiling Group was created.
  final String createdAt;
  final String id;
  final String name;
  /// The status of the Profiling Group.
  final List<GetProfilingGroupProfilingStatus> profilingStatuses;
  final String region;
  /// Mapping of Key-Value tags for the resource.
  final Map<String, String> tags;
  /// Timestamp when Profiling Group was updated.
  final String updatedAt;

  /// Creates a new [GetProfilingGroupResult].
  /// [agentOrchestrationConfigs] Profiling Group agent orchestration config
  /// [arn] ARN of the Profiling Group.
  /// [computePlatform] The compute platform of the profiling group.
  /// [createdAt] Timestamp when Profiling Group was created.
  /// [id] Required.
  /// [name] Required.
  /// [profilingStatuses] The status of the Profiling Group.
  /// [region] Required.
  /// [tags] Mapping of Key-Value tags for the resource.
  /// [updatedAt] Timestamp when Profiling Group was updated.
  GetProfilingGroupResult({
    required this.agentOrchestrationConfigs,
    required this.arn,
    required this.computePlatform,
    required this.createdAt,
    required this.id,
    required this.name,
    required this.profilingStatuses,
    required this.region,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentOrchestrationConfigs': pulumi.Input.encodeList<GetProfilingGroupAgentOrchestrationConfig, Map<String, dynamic>>(agentOrchestrationConfigs, (value) => value.toMap()),
      'arn': arn,
      'computePlatform': computePlatform,
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'profilingStatuses': pulumi.Input.encodeList<GetProfilingGroupProfilingStatus, Map<String, dynamic>>(profilingStatuses, (value) => value.toMap()),
      'region': region,
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetProfilingGroupResult.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupResult(
      agentOrchestrationConfigs: pulumi.Input.decodeList<GetProfilingGroupAgentOrchestrationConfig>(map['agentOrchestrationConfigs'], (value) => GetProfilingGroupAgentOrchestrationConfig.fromMap((value as Map).cast<String, dynamic>())),
      arn: map['arn'] as String,
      computePlatform: map['computePlatform'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      profilingStatuses: pulumi.Input.decodeList<GetProfilingGroupProfilingStatus>(map['profilingStatuses'], (value) => GetProfilingGroupProfilingStatus.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}

