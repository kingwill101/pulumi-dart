// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_definition_eks_property.dart';
import 'get_job_definition_node_property.dart';
import 'get_job_definition_retry_strategy.dart';
import 'get_job_definition_timeout.dart';

/// Result data returned by getJobDefinition.
class GetJobDefinitionResult {
  final String? arn;
  final String arnPrefix;

  /// The orchestration type of the compute environment.
  final String containerOrchestrationType;

  /// An object with various properties that are specific to Amazon EKS based jobs. This must not be specified for Amazon ECS based job definitions.
  final List<GetJobDefinitionEksProperty> eksProperties;

  /// The ARN
  final String id;

  /// The name of the volume.
  final String? name;

  /// An object with various properties specific to multi-node parallel jobs. If you specify node properties for a job, it becomes a multi-node parallel job. For more information, see Multi-node Parallel Jobs in the AWS Batch User Guide. If the job definition's type parameter is container, then you must specify either containerProperties or nodeProperties.
  final List<GetJobDefinitionNodeProperty> nodeProperties;
  final String region;

  /// The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that's specified during a SubmitJob operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it isn't retried.
  final List<GetJobDefinitionRetryStrategy> retryStrategies;
  final int? revision;

  /// The scheduling priority for jobs that are submitted with this job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.
  final int schedulingPriority;
  final String? status;
  final Map<String, String> tags;

  /// The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it isn't retried. The minimum value for the timeout is 60 seconds.
  final List<GetJobDefinitionTimeout> timeouts;

  /// The type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  final String type;

  /// Creates a new [GetJobDefinitionResult].
  /// [arn] Optional.
  /// [arnPrefix] Required.
  /// [containerOrchestrationType] The orchestration type of the compute environment.
  /// [eksProperties] An object with various properties that are specific to Amazon EKS based jobs. This must not be specified for Amazon ECS based job definitions.
  /// [id] The ARN
  /// [name] The name of the volume.
  /// [nodeProperties] An object with various properties specific to multi-node parallel jobs. If you specify node properties for a job, it becomes a multi-node parallel job. For more information, see Multi-node Parallel Jobs in the AWS Batch User Guide. If the job definition's type parameter is container, then you must specify either containerProperties or nodeProperties.
  /// [region] Required.
  /// [retryStrategies] The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that's specified during a SubmitJob operation overrides the retry strategy defined here. If a job is terminated due to a timeout, it isn't retried.
  /// [revision] Optional.
  /// [schedulingPriority] The scheduling priority for jobs that are submitted with this job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.
  /// [status] Optional.
  /// [tags] Required.
  /// [timeouts] The timeout configuration for jobs that are submitted with this job definition, after which AWS Batch terminates your jobs if they have not finished. If a job is terminated due to a timeout, it isn't retried. The minimum value for the timeout is 60 seconds.
  /// [type] The type of resource to assign to a container. The supported resources include `GPU`, `MEMORY`, and `VCPU`.
  GetJobDefinitionResult({
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
      'eksProperties':
          pulumi.Input.encodeList<
            GetJobDefinitionEksProperty,
            Map<String, dynamic>
          >(eksProperties, (value) => value.toMap()),
      'id': id,
      'name': ?name,
      'nodeProperties':
          pulumi.Input.encodeList<
            GetJobDefinitionNodeProperty,
            Map<String, dynamic>
          >(nodeProperties, (value) => value.toMap()),
      'region': region,
      'retryStrategies':
          pulumi.Input.encodeList<
            GetJobDefinitionRetryStrategy,
            Map<String, dynamic>
          >(retryStrategies, (value) => value.toMap()),
      'revision': ?revision,
      'schedulingPriority': schedulingPriority,
      'status': ?status,
      'tags': tags,
      'timeouts':
          pulumi.Input.encodeList<
            GetJobDefinitionTimeout,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetJobDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionResult(
      arn: map['arn'] == null ? null : map['arn'] as String,
      arnPrefix: map['arnPrefix'] as String,
      containerOrchestrationType: map['containerOrchestrationType'] as String,
      eksProperties: pulumi.Input.decodeList<GetJobDefinitionEksProperty>(
        map['eksProperties'],
        (value) => GetJobDefinitionEksProperty.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeProperties: pulumi.Input.decodeList<GetJobDefinitionNodeProperty>(
        map['nodeProperties'],
        (value) => GetJobDefinitionNodeProperty.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      region: map['region'] as String,
      retryStrategies: pulumi.Input.decodeList<GetJobDefinitionRetryStrategy>(
        map['retryStrategies'],
        (value) => GetJobDefinitionRetryStrategy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      revision: map['revision'] == null ? null : map['revision'] as int,
      schedulingPriority: map['schedulingPriority'] as int,
      status: map['status'] == null ? null : map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeouts: pulumi.Input.decodeList<GetJobDefinitionTimeout>(
        map['timeouts'],
        (value) => GetJobDefinitionTimeout.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      type: map['type'] as String,
    );
  }
}
