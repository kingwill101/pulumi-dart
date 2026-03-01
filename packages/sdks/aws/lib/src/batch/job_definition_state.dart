// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_definition_eks_properties.dart';
import 'job_definition_retry_strategy.dart';
import 'job_definition_timeout.dart';

/// Input properties used for looking up and filtering JobDefinition resources.
class JobDefinitionState {
  /// ARN of the job definition, includes revision (`:#`).
  final pulumi.Input<String>? arn;
  /// ARN without the revision number.
  final pulumi.Input<String>? arnPrefix;
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
  /// Revision of the job definition.
  final pulumi.Input<int>? revision;
  /// Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values `0` through `9999`.
  final pulumi.Input<int>? schedulingPriority;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of `timeout` is `1`. Defined below.
  final pulumi.Input<JobDefinitionTimeout>? timeout;
  /// Type of job definition. Must be `container` or `multinode`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [JobDefinitionState].
  /// [arn] ARN of the job definition, includes revision (`:#`).
  /// [arnPrefix] ARN without the revision number.
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
  /// [revision] Revision of the job definition.
  /// [schedulingPriority] Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values `0` through `9999`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeout] Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of `timeout` is `1`. Defined below.
  /// [type] Type of job definition. Must be `container` or `multinode`.
  JobDefinitionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? arnPrefix,
    pulumi.Output<String>? containerProperties,
    pulumi.Output<bool>? deregisterOnNewRevision,
    pulumi.Output<String>? ecsProperties,
    pulumi.Output<JobDefinitionEksProperties>? eksProperties,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nodeProperties,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<String>>? platformCapabilities,
    pulumi.Output<bool>? propagateTags,
    pulumi.Output<String>? region,
    pulumi.Output<JobDefinitionRetryStrategy>? retryStrategy,
    pulumi.Output<int>? revision,
    pulumi.Output<int>? schedulingPriority,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<JobDefinitionTimeout>? timeout,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      arnPrefix = pulumi.Input.asOptionalInput<String>(arnPrefix),
      containerProperties = pulumi.Input.asOptionalInput<String>(containerProperties),
      deregisterOnNewRevision = pulumi.Input.asOptionalInput<bool>(deregisterOnNewRevision),
      ecsProperties = pulumi.Input.asOptionalInput<String>(ecsProperties),
      eksProperties = pulumi.Input.asOptionalInput<JobDefinitionEksProperties>(eksProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeProperties = pulumi.Input.asOptionalInput<String>(nodeProperties),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      platformCapabilities = pulumi.Input.asOptionalInput<List<String>>(platformCapabilities),
      propagateTags = pulumi.Input.asOptionalInput<bool>(propagateTags),
      region = pulumi.Input.asOptionalInput<String>(region),
      retryStrategy = pulumi.Input.asOptionalInput<JobDefinitionRetryStrategy>(retryStrategy),
      revision = pulumi.Input.asOptionalInput<int>(revision),
      schedulingPriority = pulumi.Input.asOptionalInput<int>(schedulingPriority),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeout = pulumi.Input.asOptionalInput<JobDefinitionTimeout>(timeout),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'arnPrefix': ?arnPrefix,
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
      'revision': ?revision,
      'schedulingPriority': ?schedulingPriority,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeout': ?pulumi.Input.mapOptionalInputValue<JobDefinitionTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory JobDefinitionState.fromMap(Map<String, dynamic> map) {
    return JobDefinitionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      arnPrefix: map['arnPrefix'] == null ? null : pulumi.Output.create<String>(map['arnPrefix'] as String),
      containerProperties: map['containerProperties'] == null ? null : pulumi.Output.create<String>(map['containerProperties'] as String),
      deregisterOnNewRevision: map['deregisterOnNewRevision'] == null ? null : pulumi.Output.create<bool>(map['deregisterOnNewRevision'] as bool),
      ecsProperties: map['ecsProperties'] == null ? null : pulumi.Output.create<String>(map['ecsProperties'] as String),
      eksProperties: map['eksProperties'] == null ? null : pulumi.Output.create<JobDefinitionEksProperties>(JobDefinitionEksProperties.fromMap((map['eksProperties'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeProperties: map['nodeProperties'] == null ? null : pulumi.Output.create<String>(map['nodeProperties'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      platformCapabilities: map['platformCapabilities'] == null ? null : pulumi.Output.create<List<String>>((map['platformCapabilities'] as List).cast<String>()),
      propagateTags: map['propagateTags'] == null ? null : pulumi.Output.create<bool>(map['propagateTags'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retryStrategy: map['retryStrategy'] == null ? null : pulumi.Output.create<JobDefinitionRetryStrategy>(JobDefinitionRetryStrategy.fromMap((map['retryStrategy'] as Map).cast<String, dynamic>())),
      revision: map['revision'] == null ? null : pulumi.Output.create<int>(map['revision'] as int),
      schedulingPriority: map['schedulingPriority'] == null ? null : pulumi.Output.create<int>(map['schedulingPriority'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<JobDefinitionTimeout>(JobDefinitionTimeout.fromMap((map['timeout'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

