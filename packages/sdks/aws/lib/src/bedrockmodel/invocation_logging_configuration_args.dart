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
    required this.loggingConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig':
          pulumi.Input.mapInputValue<
            InvocationLoggingConfigurationLoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory InvocationLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return InvocationLoggingConfigurationArgs(
      loggingConfig: pulumi.Input.fromValue(
        InvocationLoggingConfigurationLoggingConfig.fromMap(
          (map['loggingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
