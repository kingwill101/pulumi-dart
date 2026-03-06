// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destinations_configuration.dart';
import 'logs_configuration.dart';
import 'metrics_configuration.dart';
import 'traces_configuration.dart';

/// Configuration of Open Telemetry
class OpenTelemetryConfiguration {
  /// Open telemetry destinations configuration
  final pulumi.Input<DestinationsConfiguration>? destinationsConfiguration;
  /// Open telemetry logs configuration
  final pulumi.Input<LogsConfiguration>? logsConfiguration;
  /// Open telemetry metrics configuration
  final pulumi.Input<MetricsConfiguration>? metricsConfiguration;
  /// Open telemetry trace configuration
  final pulumi.Input<TracesConfiguration>? tracesConfiguration;

  /// Creates a new [OpenTelemetryConfiguration].
  /// [destinationsConfiguration] Open telemetry destinations configuration
  /// [logsConfiguration] Open telemetry logs configuration
  /// [metricsConfiguration] Open telemetry metrics configuration
  /// [tracesConfiguration] Open telemetry trace configuration
  const OpenTelemetryConfiguration({
    this.destinationsConfiguration,
    this.logsConfiguration,
    this.metricsConfiguration,
    this.tracesConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationsConfiguration': ?pulumi.Input.mapOptionalInputValue<DestinationsConfiguration, Map<String, dynamic>>(destinationsConfiguration, (value) => value.toMap()),
      'logsConfiguration': ?pulumi.Input.mapOptionalInputValue<LogsConfiguration, Map<String, dynamic>>(logsConfiguration, (value) => value.toMap()),
      'metricsConfiguration': ?pulumi.Input.mapOptionalInputValue<MetricsConfiguration, Map<String, dynamic>>(metricsConfiguration, (value) => value.toMap()),
      'tracesConfiguration': ?pulumi.Input.mapOptionalInputValue<TracesConfiguration, Map<String, dynamic>>(tracesConfiguration, (value) => value.toMap()),
    };
  }

  factory OpenTelemetryConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenTelemetryConfiguration(
      destinationsConfiguration: (() { final guardedValue = map['destinationsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logsConfiguration: (() { final guardedValue = map['logsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricsConfiguration: (() { final guardedValue = map['metricsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tracesConfiguration: (() { final guardedValue = map['tracesConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TracesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

