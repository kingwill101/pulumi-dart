// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_pipeline_configuration.dart';
import 'telemetry_pipeline_timeouts.dart';

/// {@template pulumi_observabilityadmin_telemetry_pipeline_telemetry_pipeline_args_doc}
/// The set of arguments for TelemetryPipeline.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_telemetry_pipeline_telemetry_pipeline_args_doc}
class TelemetryPipelineArgs {
  /// Configuration block for the telemetry pipeline. See `configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TelemetryPipelineConfiguration> configuration;
  /// Name of the telemetry pipeline. Must be between 3 and 28 characters, start with a lowercase letter, and contain only lowercase letters, digits, and hyphens.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<TelemetryPipelineTimeouts?>? timeouts;

  /// Creates a new [TelemetryPipelineArgs].
  /// [configuration] Configuration block for the telemetry pipeline. See `configuration` below.
  /// [name] Name of the telemetry pipeline. Must be between 3 and 28 characters, start with a lowercase letter, and contain only lowercase letters, digits, and hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const TelemetryPipelineArgs({
    required this.configuration,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<TelemetryPipelineConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryPipelineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryPipelineArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryPipelineArgs(
      configuration: pulumi.Input.fromValue(TelemetryPipelineConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPipelineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
