// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_service_config_telemetry_config_logging_config.dart';

class FunctionRevisionServiceConfigTelemetryConfig {
  /// Deployed logging configuration.
  final pulumi.Input<FunctionRevisionServiceConfigTelemetryConfigLoggingConfig?>? loggingConfig;

  /// Creates a new [FunctionRevisionServiceConfigTelemetryConfig].
  /// [loggingConfig] Deployed logging configuration.
  const FunctionRevisionServiceConfigTelemetryConfig({
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionRevisionServiceConfigTelemetryConfigLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
    };
  }

  factory FunctionRevisionServiceConfigTelemetryConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionServiceConfigTelemetryConfig(
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionRevisionServiceConfigTelemetryConfigLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
