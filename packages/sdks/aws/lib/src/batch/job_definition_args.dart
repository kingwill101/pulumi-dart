// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_eks_properties.dart';
import 'job_definition_retry_strategy.dart';
import 'job_definition_timeout.dart';

/// {@template pulumi_batch_job_definition_job_definition_args_doc}
/// The set of arguments for JobDefinition.
/// {@endtemplate}
/// {@macro pulumi_batch_job_definition_job_definition_args_doc}
class JobDefinitionArgs {
  /// Valid [container properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the `type` parameter is `container`.
  final pulumi.Input<String>? containerProperties;
  /// When updating a job definition a new revision is created. This parameter determines if the previous version is `deregistered` (`INACTIVE`) or left  `ACTIVE`. Defaults to `true`.
  final pulumi.Input<bool>? deregisterOnNewRevision;
  /// Valid [ECS properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the `type` parameter is `container`.
  final pulumi.Input<String>? ecsProperties;
  /// Valid eks properties. This parameter is only valid if the `type` parameter is `container`.
  final pulumi.Input<JobDefinitionEksProperties>? eksProperties;
  /// Name of the job definition.
  final pulumi.Input<String>? name;
  /// Valid [node properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is required if the `type` parameter is `multinode`.
  final pulumi.Input<String>? nodeProperties;
  /// Parameter substitution placeholders to set in the job definition.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Platform capabilities required by the job definition. If no value is specified, it defaults to `EC2`. To run the job on Fargate resources, specify `FARGATE`.
  final pulumi.Input<List<String>>? platformCapabilities;
  /// Whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is `false`.
  final pulumi.Input<bool>? propagateTags;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Retry strategy to use for failed jobs that are submitted with this job definition. Maximum number of `retry_strategy` is `1`.  Defined below.
  final pulumi.Input<JobDefinitionRetryStrategy>? retryStrategy;
  /// Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values `0` through `9999`.
  final pulumi.Input<int>? schedulingPriority;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of `timeout` is `1`. Defined below.
  final pulumi.Input<JobDefinitionTimeout>? timeout;
  /// Type of job definition. Must be `container` or `multinode`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [JobDefinitionArgs].
  /// [containerProperties] Valid [container properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the `type` parameter is `container`.
  /// [deregisterOnNewRevision] When updating a job definition a new revision is created. This parameter determines if the previous version is `deregistered` (`INACTIVE`) or left  `ACTIVE`. Defaults to `true`.
  /// [ecsProperties] Valid [ECS properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the `type` parameter is `container`.
  /// [eksProperties] Valid eks properties. This parameter is only valid if the `type` parameter is `container`.
  /// [name] Name of the job definition.
  /// [nodeProperties] Valid [node properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is required if the `type` parameter is `multinode`.
  /// [parameters] Parameter substitution placeholders to set in the job definition.
  /// [platformCapabilities] Platform capabilities required by the job definition. If no value is specified, it defaults to `EC2`. To run the job on Fargate resources, specify `FARGATE`.
  /// [propagateTags] Whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retryStrategy] Retry strategy to use for failed jobs that are submitted with this job definition. Maximum number of `retry_strategy` is `1`.  Defined below.
  /// [schedulingPriority] Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values `0` through `9999`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeout] Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of `timeout` is `1`. Defined below.
  /// [type] Type of job definition. Must be `container` or `multinode`.
  JobDefinitionArgs({
    this.containerProperties,
    this.deregisterOnNewRevision,
    this.ecsProperties,
    this.eksProperties,
    this.name,
    this.nodeProperties,
    this.parameters,
    this.platformCapabilities,
    this.propagateTags,
    this.region,
    this.retryStrategy,
    this.schedulingPriority,
    this.tags,
    this.timeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerProperties': ?containerProperties,
      'deregisterOnNewRevision': ?deregisterOnNewRevision,
      'ecsProperties': ?ecsProperties,
      'eksProperties': ?pulumi.Input.mapOptionalInputValue<JobDefinitionEksProperties, Map<String, dynamic>>(eksProperties, (value) => value.toMap()),
      'name': ?name,
      'nodeProperties': ?nodeProperties,
      'parameters': ?parameters,
      'platformCapabilities': ?platformCapabilities,
      'propagateTags': ?propagateTags,
      'region': ?region,
      'retryStrategy': ?pulumi.Input.mapOptionalInputValue<JobDefinitionRetryStrategy, Map<String, dynamic>>(retryStrategy, (value) => value.toMap()),
      'schedulingPriority': ?schedulingPriority,
      'tags': ?tags,
      'timeout': ?pulumi.Input.mapOptionalInputValue<JobDefinitionTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'type': type,
    };
  }

  factory JobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return JobDefinitionArgs(
      containerProperties: (() { final guardedValue = map['containerProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deregisterOnNewRevision: (() { final guardedValue = map['deregisterOnNewRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ecsProperties: (() { final guardedValue = map['ecsProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eksProperties: (() { final guardedValue = map['eksProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionEksProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeProperties: (() { final guardedValue = map['nodeProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      platformCapabilities: (() { final guardedValue = map['platformCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryStrategy: (() { final guardedValue = map['retryStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionRetryStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPriority: (() { final guardedValue = map['schedulingPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobDefinitionTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

