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
    this.arn,
    this.latest,
    this.observabilityConfigurationName,
    this.observabilityConfigurationRevision,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.traceConfiguration,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      latest: map['latest'] == null ? null : (map['latest'] as bool).input(),
      observabilityConfigurationName: map['observabilityConfigurationName'] == null ? null : (map['observabilityConfigurationName'] as String).input(),
      observabilityConfigurationRevision: map['observabilityConfigurationRevision'] == null ? null : (map['observabilityConfigurationRevision'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      traceConfiguration: map['traceConfiguration'] == null ? null : (ObservabilityConfigurationTraceConfiguration.fromMap((map['traceConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

