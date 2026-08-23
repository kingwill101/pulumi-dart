// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property.dart';
import 'get_job_definition_node_property.dart';
import 'get_job_definition_retry_strategy.dart';
import 'get_job_definition_timeout.dart';

/// Result data returned by getJobDefinition.
class GetJobDefinitionResult {
  final String? arn;
  /// ARN prefix of the job definition.
  final String arnPrefix;
  /// Orchestration type of the compute environment.
  final String containerOrchestrationType;
  /// Properties that are specific to Amazon EKS based jobs. This must not be specified for Amazon ECS based job definitions. See `eksProperties` below.
  final List<GetJobDefinitionEksProperty> eksProperties;
  /// ARN
  final String id;
  /// Name of the volume.
  final String? name;
  /// Properties specific to multi-node parallel jobs. See `nodeProperties` below.
  final List<GetJobDefinitionNodeProperty> nodeProperties;
  final String region;
  /// Retry strategy to use for failed jobs that are submitted with this job definition. See `retryStrategy` below.
  final List<GetJobDefinitionRetryStrategy> retryStrategies;
  final int? revision;
  /// Scheduling priority for jobs that are submitted with this job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.
  final int schedulingPriority;
  final String? status;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;
  /// Timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. See `timeout` below.
  final List<GetJobDefinitionTimeout> timeouts;
  /// Type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  final String type;

  /// Creates a new [GetJobDefinitionResult].
  /// [arn] Optional.
  /// [arnPrefix] ARN prefix of the job definition.
  /// [containerOrchestrationType] Orchestration type of the compute environment.
  /// [eksProperties] Properties that are specific to Amazon EKS based jobs. This must not be specified for Amazon ECS based job definitions. See `eksProperties` below.
  /// [id] ARN
  /// [name] Name of the volume.
  /// [nodeProperties] Properties specific to multi-node parallel jobs. See `nodeProperties` below.
  /// [region] Required.
  /// [retryStrategies] Retry strategy to use for failed jobs that are submitted with this job definition. See `retryStrategy` below.
  /// [revision] Optional.
  /// [schedulingPriority] Scheduling priority for jobs that are submitted with this job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.
  /// [status] Optional.
  /// [tags] Map of tags assigned to the resource.
  /// [timeouts] Timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. See `timeout` below.
  /// [type] Type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  const GetJobDefinitionResult({
    this.arn,
    required this.arnPrefix,
    required this.containerOrchestrationType,
    required this.eksProperties,
    required this.id,
    this.name,
    required this.nodeProperties,
    required this.region,
    required this.retryStrategies,
    this.revision,
    required this.schedulingPriority,
    this.status,
    required this.tags,
    required this.timeouts,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnPrefix': arnPrefix,
      'containerOrchestrationType': containerOrchestrationType,
      'eksProperties': pulumi.Input.encodeList<GetJobDefinitionEksProperty, Map<String, dynamic>>(eksProperties, (value) => value.toMap()),
      'id': id,
      'name': ?name,
      'nodeProperties': pulumi.Input.encodeList<GetJobDefinitionNodeProperty, Map<String, dynamic>>(nodeProperties, (value) => value.toMap()),
      'region': region,
      'retryStrategies': pulumi.Input.encodeList<GetJobDefinitionRetryStrategy, Map<String, dynamic>>(retryStrategies, (value) => value.toMap()),
      'revision': ?revision,
      'schedulingPriority': schedulingPriority,
      'status': ?status,
      'tags': tags,
      'timeouts': pulumi.Input.encodeList<GetJobDefinitionTimeout, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetJobDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arnPrefix: map['arnPrefix'] as String,
      containerOrchestrationType: map['containerOrchestrationType'] as String,
      eksProperties: pulumi.Input.decodeList<GetJobDefinitionEksProperty>(map['eksProperties']!, (value) => GetJobDefinitionEksProperty.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeProperties: pulumi.Input.decodeList<GetJobDefinitionNodeProperty>(map['nodeProperties']!, (value) => GetJobDefinitionNodeProperty.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      retryStrategies: pulumi.Input.decodeList<GetJobDefinitionRetryStrategy>(map['retryStrategies']!, (value) => GetJobDefinitionRetryStrategy.fromMap((value as Map).cast<String, dynamic>())),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return guardedValue as int; })(),
      schedulingPriority: map['schedulingPriority'] as int,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (map['tags'] as Map).cast<String, String>(),
      timeouts: pulumi.Input.decodeList<GetJobDefinitionTimeout>(map['timeouts']!, (value) => GetJobDefinitionTimeout.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
