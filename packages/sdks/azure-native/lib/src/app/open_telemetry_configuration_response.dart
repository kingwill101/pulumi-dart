// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destinations_configuration_response.dart';
import 'logs_configuration_response.dart';
import 'metrics_configuration_response.dart';
import 'traces_configuration_response.dart';

/// Configuration of Open Telemetry
class OpenTelemetryConfigurationResponse {
  /// Open telemetry destinations configuration
  final pulumi.Input<DestinationsConfigurationResponse>? destinationsConfiguration;
  /// Open telemetry logs configuration
  final pulumi.Input<LogsConfigurationResponse>? logsConfiguration;
  /// Open telemetry metrics configuration
  final pulumi.Input<MetricsConfigurationResponse>? metricsConfiguration;
  /// Open telemetry trace configuration
  final pulumi.Input<TracesConfigurationResponse>? tracesConfiguration;

  /// Creates a new [OpenTelemetryConfigurationResponse].
  /// [destinationsConfiguration] Open telemetry destinations configuration
  /// [logsConfiguration] Open telemetry logs configuration
  /// [metricsConfiguration] Open telemetry metrics configuration
  /// [tracesConfiguration] Open telemetry trace configuration
  OpenTelemetryConfigurationResponse({
    this.destinationsConfiguration,
    this.logsConfiguration,
    this.metricsConfiguration,
    this.tracesConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationsConfiguration': ?pulumi.Input.mapOptionalInputValue<DestinationsConfigurationResponse, Map<String, dynamic>>(destinationsConfiguration, (value) => value.toMap()),
      'logsConfiguration': ?pulumi.Input.mapOptionalInputValue<LogsConfigurationResponse, Map<String, dynamic>>(logsConfiguration, (value) => value.toMap()),
      'metricsConfiguration': ?pulumi.Input.mapOptionalInputValue<MetricsConfigurationResponse, Map<String, dynamic>>(metricsConfiguration, (value) => value.toMap()),
      'tracesConfiguration': ?pulumi.Input.mapOptionalInputValue<TracesConfigurationResponse, Map<String, dynamic>>(tracesConfiguration, (value) => value.toMap()),
    };
  }

  factory OpenTelemetryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OpenTelemetryConfigurationResponse(
      destinationsConfiguration: (() { final guardedValue = map['destinationsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logsConfiguration: (() { final guardedValue = map['logsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricsConfiguration: (() { final guardedValue = map['metricsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tracesConfiguration: (() { final guardedValue = map['tracesConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TracesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

