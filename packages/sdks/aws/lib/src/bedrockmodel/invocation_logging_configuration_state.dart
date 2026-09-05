// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_logging_configuration_logging_config.dart';

/// Input properties used for looking up and filtering InvocationLoggingConfiguration resources.
class InvocationLoggingConfigurationState {
  /// The logging configuration values to set. See `loggingConfig` Block for details.
  final pulumi.Input<InvocationLoggingConfigurationLoggingConfig?>? loggingConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [InvocationLoggingConfigurationState].
  /// [loggingConfig] The logging configuration values to set. See `loggingConfig` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InvocationLoggingConfigurationState({
    this.loggingConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<InvocationLoggingConfigurationLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory InvocationLoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return InvocationLoggingConfigurationState(
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationLoggingConfigurationLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
