// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'observability_configuration_trace_configuration.dart';

/// {@template pulumi_apprunner_observability_configuration_observability_configuration_args_doc}
/// The set of arguments for ObservabilityConfiguration.
/// {@endtemplate}
/// {@macro pulumi_apprunner_observability_configuration_observability_configuration_args_doc}
class ObservabilityConfigurationArgs {
  /// Name of the observability configuration.
  final pulumi.Input<String> observabilityConfigurationName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  final pulumi.Input<ObservabilityConfigurationTraceConfiguration>? traceConfiguration;

  /// Creates a new [ObservabilityConfigurationArgs].
  /// [observabilityConfigurationName] Name of the observability configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [traceConfiguration] Configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing. See Trace Configuration below for more details.
  ObservabilityConfigurationArgs({
    required String observabilityConfigurationName,
    String? region,
    Map<String, String>? tags,
    ObservabilityConfigurationTraceConfiguration? traceConfiguration,
  }) :
      observabilityConfigurationName = pulumi.Input.asInput<String>(observabilityConfigurationName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      traceConfiguration = pulumi.Input.asOptionalInput<ObservabilityConfigurationTraceConfiguration>(traceConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observabilityConfigurationName': observabilityConfigurationName,
      'region': ?region,
      'tags': ?tags,
      'traceConfiguration': ?pulumi.Input.mapOptionalInputValue<ObservabilityConfigurationTraceConfiguration, Map<String, dynamic>>(traceConfiguration, (value) => value.toMap()),
    };
  }

  factory ObservabilityConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ObservabilityConfigurationArgs(
      observabilityConfigurationName: map['observabilityConfigurationName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      traceConfiguration: map['traceConfiguration'] == null ? null : ObservabilityConfigurationTraceConfiguration.fromMap((map['traceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

