// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profiling_group_agent_orchestration_config.dart';
import 'get_profiling_group_profiling_status.dart';

/// Result data returned by getProfilingGroup.
class GetProfilingGroupResult {
  /// Profiling Group agent orchestration config
  final List<GetProfilingGroupAgentOrchestrationConfig>? agentOrchestrationConfigs;
  /// ARN of the Profiling Group.
  final String? arn;
  /// The compute platform of the profiling group.
  final String? computePlatform;
  /// Timestamp when Profiling Group was created.
  final String? createdAt;
  final String? id;
  final String? name;
  /// The status of the Profiling Group.
  final List<GetProfilingGroupProfilingStatus>? profilingStatuses;
  final String? region;
  /// Mapping of Key-Value tags for the resource.
  final Map<String, String>? tags;
  /// Timestamp when Profiling Group was updated.
  final String? updatedAt;

  /// Creates a new [GetProfilingGroupResult].
  /// [agentOrchestrationConfigs] Profiling Group agent orchestration config
  /// [arn] ARN of the Profiling Group.
  /// [computePlatform] The compute platform of the profiling group.
  /// [createdAt] Timestamp when Profiling Group was created.
  /// [id] Optional.
  /// [name] Optional.
  /// [profilingStatuses] The status of the Profiling Group.
  /// [region] Optional.
  /// [tags] Mapping of Key-Value tags for the resource.
  /// [updatedAt] Timestamp when Profiling Group was updated.
  const GetProfilingGroupResult({
    this.agentOrchestrationConfigs,
    this.arn,
    this.computePlatform,
    this.createdAt,
    this.id,
    this.name,
    this.profilingStatuses,
    this.region,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentOrchestrationConfigs': ?(() { final guardedValue = agentOrchestrationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProfilingGroupAgentOrchestrationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'arn': ?arn,
      'computePlatform': ?computePlatform,
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
      'profilingStatuses': ?(() { final guardedValue = profilingStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProfilingGroupProfilingStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetProfilingGroupResult.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupResult(
      agentOrchestrationConfigs: (() { final guardedValue = map['agentOrchestrationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProfilingGroupAgentOrchestrationConfig>(guardedValue, (value) => GetProfilingGroupAgentOrchestrationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computePlatform: (() { final guardedValue = map['computePlatform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profilingStatuses: (() { final guardedValue = map['profilingStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProfilingGroupProfilingStatus>(guardedValue, (value) => GetProfilingGroupProfilingStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
