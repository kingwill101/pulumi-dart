// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../invocation_logging_configuration_logging_config/invocation_logging_configuration_logging_config.dart';

/// The set of arguments for InvocationLoggingConfiguration.
class InvocationLoggingConfigurationArgs {
  /// The logging configuration values to set. See <span pulumi-lang-nodejs="`loggingConfig`" pulumi-lang-dotnet="`LoggingConfig`" pulumi-lang-go="`loggingConfig`" pulumi-lang-python="`logging_config`" pulumi-lang-yaml="`loggingConfig`" pulumi-lang-java="`loggingConfig`">`logging_config`</span> Block for details.
  final Input<InvocationLoggingConfigurationLoggingConfig> loggingConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  InvocationLoggingConfigurationArgs({
    required this.loggingConfig,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['loggingConfig'] = Input.mapInputValue<
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
      loggingConfig: Input.asInput<InvocationLoggingConfigurationLoggingConfig>(
          map['loggingConfig']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
