// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_logging_configuration_logging_config.dart';

/// Input properties used for looking up and filtering InvocationLoggingConfiguration resources.
class InvocationLoggingConfigurationState {
  /// The logging configuration values to set. See `logging_config` Block for details.
  final pulumi.Input<InvocationLoggingConfigurationLoggingConfig>? loggingConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InvocationLoggingConfigurationState].
  /// [loggingConfig] The logging configuration values to set. See `logging_config` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InvocationLoggingConfigurationState({
    pulumi.Output<InvocationLoggingConfigurationLoggingConfig>? loggingConfig,
    pulumi.Output<String>? region,
  }) :
      loggingConfig = pulumi.Input.asOptionalInput<InvocationLoggingConfigurationLoggingConfig>(loggingConfig),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<InvocationLoggingConfigurationLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory InvocationLoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return InvocationLoggingConfigurationState(
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<InvocationLoggingConfigurationLoggingConfig>(InvocationLoggingConfigurationLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

