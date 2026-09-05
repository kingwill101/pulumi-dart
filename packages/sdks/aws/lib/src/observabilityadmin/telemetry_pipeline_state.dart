// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_pipeline_configuration.dart';
import 'telemetry_pipeline_timeouts.dart';

/// Input properties used for looking up and filtering TelemetryPipeline resources.
class TelemetryPipelineState {
  /// ARN of the telemetry pipeline.
  final pulumi.Input<String?>? arn;
  /// Configuration block for the telemetry pipeline. See `configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TelemetryPipelineConfiguration?>? configuration;
  /// Name of the telemetry pipeline. Must be between 3 and 28 characters, start with a lowercase letter, and contain only lowercase letters, digits, and hyphens.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<TelemetryPipelineTimeouts?>? timeouts;

  /// Creates a new [TelemetryPipelineState].
  /// [arn] ARN of the telemetry pipeline.
  /// [configuration] Configuration block for the telemetry pipeline. See `configuration` below.
  /// [name] Name of the telemetry pipeline. Must be between 3 and 28 characters, start with a lowercase letter, and contain only lowercase letters, digits, and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const TelemetryPipelineState({
    this.arn,
    this.configuration,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<TelemetryPipelineConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryPipelineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryPipelineState.fromMap(Map<String, dynamic> map) {
    return TelemetryPipelineState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPipelineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPipelineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
