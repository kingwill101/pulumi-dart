// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_logging_configuration_logging_config.dart';

/// {@template pulumi_bedrockmodel_invocation_logging_configuration_invocation_logging_configuration_args_doc}
/// The set of arguments for InvocationLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_bedrockmodel_invocation_logging_configuration_invocation_logging_configuration_args_doc}
class InvocationLoggingConfigurationArgs {
  /// The logging configuration values to set. See `logging_config` Block for details.
  final pulumi.Input<InvocationLoggingConfigurationLoggingConfig> loggingConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InvocationLoggingConfigurationArgs].
  /// [loggingConfig] The logging configuration values to set. See `logging_config` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InvocationLoggingConfigurationArgs({
    required InvocationLoggingConfigurationLoggingConfig loggingConfig,
    String? region,
  })  : loggingConfig =
            pulumi.Input.asInput<InvocationLoggingConfigurationLoggingConfig>(
                loggingConfig),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfig'] = pulumi.Input.mapInputValue<
        InvocationLoggingConfigurationLoggingConfig,
        Map<String, dynamic>>(loggingConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InvocationLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return InvocationLoggingConfigurationArgs(
      loggingConfig: InvocationLoggingConfigurationLoggingConfig.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
