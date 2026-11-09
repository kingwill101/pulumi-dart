// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_service_config_telemetry_config_actual_logging_config.dart';

class FunctionRevisionServiceConfigTelemetryConfigActual {
  /// Deployed logging configuration.
  final pulumi.Input<List<FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig>> loggingConfigs;

  /// Creates a new [FunctionRevisionServiceConfigTelemetryConfigActual].
  /// [loggingConfigs] Deployed logging configuration.
  const FunctionRevisionServiceConfigTelemetryConfigActual({
    required this.loggingConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfigs': pulumi.Input.mapInputValue<List<FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig>, List<Map<String, dynamic>>>(loggingConfigs, (value) => pulumi.Input.encodeList<FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FunctionRevisionServiceConfigTelemetryConfigActual.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionServiceConfigTelemetryConfigActual(
      loggingConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig>(map['loggingConfigs']!, (value) => FunctionRevisionServiceConfigTelemetryConfigActualLoggingConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
