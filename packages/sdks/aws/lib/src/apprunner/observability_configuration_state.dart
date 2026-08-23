// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'observability_configuration_trace_configuration.dart';

/// Input properties used for looking up and filtering ObservabilityConfiguration resources.
class ObservabilityConfigurationState {
  /// ARN of this observability configuration.
  final pulumi.Input<String>? arn;
  /// Whether the observability configuration has the highest `observabilityConfigurationRevision` among all configurations that share the same `observabilityConfigurationName`.
  final pulumi.Input<bool>? latest;
  /// Name of the observability configuration.
  final pulumi.Input<String>? observabilityConfigurationName;
  /// Revision of this observability configuration.
  final pulumi.Input<int>? observabilityConfigurationRevision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See `traceConfiguration` Block below for more details.
  final pulumi.Input<ObservabilityConfigurationTraceConfiguration>? traceConfiguration;

  /// Creates a new [ObservabilityConfigurationState].
  /// [arn] ARN of this observability configuration.
  /// [latest] Whether the observability configuration has the highest `observabilityConfigurationRevision` among all configurations that share the same `observabilityConfigurationName`.
  /// [observabilityConfigurationName] Name of the observability configuration.
  /// [observabilityConfigurationRevision] Revision of this observability configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [traceConfiguration] Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See `traceConfiguration` Block below for more details.
  const ObservabilityConfigurationState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latest: (() { final guardedValue = map['latest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      observabilityConfigurationName: (() { final guardedValue = map['observabilityConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observabilityConfigurationRevision: (() { final guardedValue = map['observabilityConfigurationRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      traceConfiguration: (() { final guardedValue = map['traceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservabilityConfigurationTraceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
