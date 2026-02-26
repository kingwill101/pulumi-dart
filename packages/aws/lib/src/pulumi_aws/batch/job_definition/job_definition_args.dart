// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_definition_eks_properties/job_definition_eks_properties.dart';
import '../job_definition_retry_strategy/job_definition_retry_strategy.dart';
import '../job_definition_timeout/job_definition_timeout.dart';

/// The set of arguments for JobDefinition.
class JobDefinitionArgs {
  /// Valid [container properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span>.
  final Input<String>? containerProperties;

  /// When updating a job definition a new revision is created. This parameter determines if the previous version is <span pulumi-lang-nodejs="`deregistered`" pulumi-lang-dotnet="`Deregistered`" pulumi-lang-go="`deregistered`" pulumi-lang-python="`deregistered`" pulumi-lang-yaml="`deregistered`" pulumi-lang-java="`deregistered`">`deregistered`</span> (`INACTIVE`) or left  `ACTIVE`. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? deregisterOnNewRevision;

  /// Valid [ECS properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is only valid if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span>.
  final Input<String>? ecsProperties;

  /// Valid eks properties. This parameter is only valid if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span>.
  final Input<JobDefinitionEksProperties>? eksProperties;

  /// Name of the job definition.
  final Input<String>? name;

  /// Valid [node properties](http://docs.aws.amazon.com/batch/latest/APIReference/API_RegisterJobDefinition.html) provided as a single valid JSON document. This parameter is required if the <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> parameter is <span pulumi-lang-nodejs="`multinode`" pulumi-lang-dotnet="`Multinode`" pulumi-lang-go="`multinode`" pulumi-lang-python="`multinode`" pulumi-lang-yaml="`multinode`" pulumi-lang-java="`multinode`">`multinode`</span>.
  final Input<String>? nodeProperties;

  /// Parameter substitution placeholders to set in the job definition.
  final Input<Map<String, String>>? parameters;

  /// Platform capabilities required by the job definition. If no value is specified, it defaults to `EC2`. To run the job on Fargate resources, specify `FARGATE`.
  final Input<List<String>>? platformCapabilities;

  /// Whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? propagateTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Retry strategy to use for failed jobs that are submitted with this job definition. Maximum number of <span pulumi-lang-nodejs="`retryStrategy`" pulumi-lang-dotnet="`RetryStrategy`" pulumi-lang-go="`retryStrategy`" pulumi-lang-python="`retry_strategy`" pulumi-lang-yaml="`retryStrategy`" pulumi-lang-java="`retryStrategy`">`retry_strategy`</span> is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.  Defined below.
  final Input<JobDefinitionRetryStrategy>? retryStrategy;

  /// Scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy. Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority. Allowed values <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> through <span pulumi-lang-nodejs="`9999`" pulumi-lang-dotnet="`9999`" pulumi-lang-go="`9999`" pulumi-lang-python="`9999`" pulumi-lang-yaml="`9999`" pulumi-lang-java="`9999`">`9999`</span>.
  final Input<int>? schedulingPriority;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of <span pulumi-lang-nodejs="`timeout`" pulumi-lang-dotnet="`Timeout`" pulumi-lang-go="`timeout`" pulumi-lang-python="`timeout`" pulumi-lang-yaml="`timeout`" pulumi-lang-java="`timeout`">`timeout`</span> is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Defined below.
  final Input<JobDefinitionTimeout>? timeout;

  /// Type of job definition. Must be <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span> or <span pulumi-lang-nodejs="`multinode`" pulumi-lang-dotnet="`Multinode`" pulumi-lang-go="`multinode`" pulumi-lang-python="`multinode`" pulumi-lang-yaml="`multinode`" pulumi-lang-java="`multinode`">`multinode`</span>.
  ///
  /// The following arguments are optional:
  final Input<String> type;

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
    final map = <String, dynamic>{};
    final containerPropertiesValue = containerProperties;
    if (containerPropertiesValue != null) {
      map['containerProperties'] = containerPropertiesValue;
    }
    final deregisterOnNewRevisionValue = deregisterOnNewRevision;
    if (deregisterOnNewRevisionValue != null) {
      map['deregisterOnNewRevision'] = deregisterOnNewRevisionValue;
    }
    final ecsPropertiesValue = ecsProperties;
    if (ecsPropertiesValue != null) {
      map['ecsProperties'] = ecsPropertiesValue;
    }
    final eksPropertiesValue = eksProperties;
    if (eksPropertiesValue != null) {
      map['eksProperties'] = Input.mapOptionalInputValue<
          JobDefinitionEksProperties,
          Map<String, dynamic>>(eksPropertiesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodePropertiesValue = nodeProperties;
    if (nodePropertiesValue != null) {
      map['nodeProperties'] = nodePropertiesValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final platformCapabilitiesValue = platformCapabilities;
    if (platformCapabilitiesValue != null) {
      map['platformCapabilities'] = platformCapabilitiesValue;
    }
    final propagateTagsValue = propagateTags;
    if (propagateTagsValue != null) {
      map['propagateTags'] = propagateTagsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retryStrategyValue = retryStrategy;
    if (retryStrategyValue != null) {
      map['retryStrategy'] = Input.mapOptionalInputValue<
          JobDefinitionRetryStrategy,
          Map<String, dynamic>>(retryStrategyValue, (value) => value.toMap());
    }
    final schedulingPriorityValue = schedulingPriority;
    if (schedulingPriorityValue != null) {
      map['schedulingPriority'] = schedulingPriorityValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = Input.mapOptionalInputValue<JobDefinitionTimeout,
          Map<String, dynamic>>(timeoutValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory JobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return JobDefinitionArgs(
      containerProperties:
          Input.asOptionalInput<String>(map['containerProperties']),
      deregisterOnNewRevision:
          Input.asOptionalInput<bool>(map['deregisterOnNewRevision']),
      ecsProperties: Input.asOptionalInput<String>(map['ecsProperties']),
      eksProperties: Input.asOptionalInput<JobDefinitionEksProperties>(
          map['eksProperties']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeProperties: Input.asOptionalInput<String>(map['nodeProperties']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      platformCapabilities:
          Input.asOptionalInput<List<String>>(map['platformCapabilities']),
      propagateTags: Input.asOptionalInput<bool>(map['propagateTags']),
      region: Input.asOptionalInput<String>(map['region']),
      retryStrategy: Input.asOptionalInput<JobDefinitionRetryStrategy>(
          map['retryStrategy']),
      schedulingPriority: Input.asOptionalInput<int>(map['schedulingPriority']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeout: Input.asOptionalInput<JobDefinitionTimeout>(map['timeout']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
