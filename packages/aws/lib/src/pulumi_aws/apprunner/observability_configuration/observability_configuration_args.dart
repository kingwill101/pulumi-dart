// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../observability_configuration_trace_configuration/observability_configuration_trace_configuration.dart';

/// The set of arguments for ObservabilityConfiguration.
class ObservabilityConfigurationArgs {
  /// Name of the observability configuration.
  final pulumi.Input<String> observabilityConfigurationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  final pulumi.Input<ObservabilityConfigurationTraceConfiguration>?
      traceConfiguration;

  ObservabilityConfigurationArgs({
    required this.observabilityConfigurationName,
    this.region,
    this.tags,
    this.traceConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['observabilityConfigurationName'] = observabilityConfigurationName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final traceConfigurationValue = traceConfiguration;
    if (traceConfigurationValue != null) {
      map['traceConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ObservabilityConfigurationTraceConfiguration,
              Map<String, dynamic>>(
          traceConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory ObservabilityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ObservabilityConfigurationArgs(
      observabilityConfigurationName:
          pulumi.Input.asInput<String>(map['observabilityConfigurationName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      traceConfiguration: pulumi.Input.asOptionalInput<
              ObservabilityConfigurationTraceConfiguration>(
          map['traceConfiguration']),
    );
  }
}
