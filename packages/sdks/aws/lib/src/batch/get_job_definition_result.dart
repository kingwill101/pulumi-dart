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
  final String? arnPrefix;
  /// Orchestration type of the compute environment.
  final String? containerOrchestrationType;
  /// Properties that are specific to Amazon EKS based jobs. This must not be specified for Amazon ECS based job definitions. See `eksProperties` below.
  final List<GetJobDefinitionEksProperty>? eksProperties;
  /// ARN
  final String? id;
  /// Name of the volume.
  final String? name;
  /// Properties specific to multi-node parallel jobs. See `nodeProperties` below.
  final List<GetJobDefinitionNodeProperty>? nodeProperties;
  final String? region;
  /// Retry strategy to use for failed jobs that are submitted with this job definition. See `retryStrategy` below.
  final List<GetJobDefinitionRetryStrategy>? retryStrategies;
  final int? revision;
  /// Scheduling priority for jobs that are submitted with this job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.
  final int? schedulingPriority;
  final String? status;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. See `timeout` below.
  final List<GetJobDefinitionTimeout>? timeouts;
  /// Type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  final String? type;

  /// Creates a new [GetJobDefinitionResult].
  /// [arn] Optional.
  /// [arnPrefix] ARN prefix of the job definition.
  /// [containerOrchestrationType] Orchestration type of the compute environment.
  /// [eksProperties] Properties that are specific to Amazon EKS based jobs. This must not be specified for Amazon ECS based job definitions. See `eksProperties` below.
  /// [id] ARN
  /// [name] Name of the volume.
  /// [nodeProperties] Properties specific to multi-node parallel jobs. See `nodeProperties` below.
  /// [region] Optional.
  /// [retryStrategies] Retry strategy to use for failed jobs that are submitted with this job definition. See `retryStrategy` below.
  /// [revision] Optional.
  /// [schedulingPriority] Scheduling priority for jobs that are submitted with this job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.
  /// [status] Optional.
  /// [tags] Map of tags assigned to the resource.
  /// [timeouts] Timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. See `timeout` below.
  /// [type] Type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  const GetJobDefinitionResult({
    this.arn,
    this.arnPrefix,
    this.containerOrchestrationType,
    this.eksProperties,
    this.id,
    this.name,
    this.nodeProperties,
    this.region,
    this.retryStrategies,
    this.revision,
    this.schedulingPriority,
    this.status,
    this.tags,
    this.timeouts,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnPrefix': ?arnPrefix,
      'containerOrchestrationType': ?containerOrchestrationType,
      'eksProperties': ?(() { final guardedValue = eksProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobDefinitionEksProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'nodeProperties': ?(() { final guardedValue = nodeProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobDefinitionNodeProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'retryStrategies': ?(() { final guardedValue = retryStrategies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobDefinitionRetryStrategy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'revision': ?revision,
      'schedulingPriority': ?schedulingPriority,
      'status': ?status,
      'tags': ?tags,
      'timeouts': ?(() { final guardedValue = timeouts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetJobDefinitionTimeout, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetJobDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arnPrefix: (() { final guardedValue = map['arnPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerOrchestrationType: (() { final guardedValue = map['containerOrchestrationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eksProperties: (() { final guardedValue = map['eksProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobDefinitionEksProperty>(guardedValue, (value) => GetJobDefinitionEksProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeProperties: (() { final guardedValue = map['nodeProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobDefinitionNodeProperty>(guardedValue, (value) => GetJobDefinitionNodeProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retryStrategies: (() { final guardedValue = map['retryStrategies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobDefinitionRetryStrategy>(guardedValue, (value) => GetJobDefinitionRetryStrategy.fromMap((value as Map).cast<String, dynamic>())); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      schedulingPriority: (() { final guardedValue = map['schedulingPriority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetJobDefinitionTimeout>(guardedValue, (value) => GetJobDefinitionTimeout.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
