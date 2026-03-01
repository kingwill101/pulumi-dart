// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'observability_configuration_trace_configuration.dart';

/// Input properties used for looking up and filtering ObservabilityConfiguration resources.
class ObservabilityConfigurationState {
  /// ARN of this observability configuration.
  final pulumi.Input<String>? arn;
  /// Whether the observability configuration has the highest `observability_configuration_revision` among all configurations that share the same `observability_configuration_name`.
  final pulumi.Input<bool>? latest;
  /// Name of the observability configuration.
  final pulumi.Input<String>? observabilityConfigurationName;
  /// The revision of this observability configuration.
  final pulumi.Input<int>? observabilityConfigurationRevision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  final pulumi.Input<ObservabilityConfigurationTraceConfiguration>? traceConfiguration;

  /// Creates a new [ObservabilityConfigurationState].
  /// [arn] ARN of this observability configuration.
  /// [latest] Whether the observability configuration has the highest `observability_configuration_revision` among all configurations that share the same `observability_configuration_name`.
  /// [observabilityConfigurationName] Name of the observability configuration.
  /// [observabilityConfigurationRevision] The revision of this observability configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [traceConfiguration] Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  ObservabilityConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? latest,
    pulumi.Output<String>? observabilityConfigurationName,
    pulumi.Output<int>? observabilityConfigurationRevision,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ObservabilityConfigurationTraceConfiguration>? traceConfiguration,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      observabilityConfigurationName = pulumi.Input.asOptionalInput<String>(observabilityConfigurationName),
      observabilityConfigurationRevision = pulumi.Input.asOptionalInput<int>(observabilityConfigurationRevision),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      traceConfiguration = pulumi.Input.asOptionalInput<ObservabilityConfigurationTraceConfiguration>(traceConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'latest': ?latest,
      'observabilityConfigurationName': ?observabilityConfigurationName,
      'observabilityConfigurationRevision': ?observabilityConfigurationRevision,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'traceConfiguration': ?pulumi.Input.mapOptionalInputValue<ObservabilityConfigurationTraceConfiguration, Map<String, dynamic>>(traceConfiguration, (value) => value.toMap()),
    };
  }

  factory ObservabilityConfigurationState.fromMap(Map<String, dynamic> map) {
    return ObservabilityConfigurationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      observabilityConfigurationName: map['observabilityConfigurationName'] == null ? null : pulumi.Output.create<String>(map['observabilityConfigurationName'] as String),
      observabilityConfigurationRevision: map['observabilityConfigurationRevision'] == null ? null : pulumi.Output.create<int>(map['observabilityConfigurationRevision'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      traceConfiguration: map['traceConfiguration'] == null ? null : pulumi.Output.create<ObservabilityConfigurationTraceConfiguration>(ObservabilityConfigurationTraceConfiguration.fromMap((map['traceConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

