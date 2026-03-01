// ignore_for_file: unused_element, unnecessary_cast

import 'destinations_configuration.dart';
import 'logs_configuration.dart';
import 'metrics_configuration.dart';
import 'traces_configuration.dart';

/// Configuration of Open Telemetry
class OpenTelemetryConfiguration {
  /// Open telemetry destinations configuration
  final DestinationsConfiguration? destinationsConfiguration;
  /// Open telemetry logs configuration
  final LogsConfiguration? logsConfiguration;
  /// Open telemetry metrics configuration
  final MetricsConfiguration? metricsConfiguration;
  /// Open telemetry trace configuration
  final TracesConfiguration? tracesConfiguration;

  /// Creates a new [OpenTelemetryConfiguration].
  /// [destinationsConfiguration] Open telemetry destinations configuration
  /// [logsConfiguration] Open telemetry logs configuration
  /// [metricsConfiguration] Open telemetry metrics configuration
  /// [tracesConfiguration] Open telemetry trace configuration
  OpenTelemetryConfiguration({
    this.destinationsConfiguration,
    this.logsConfiguration,
    this.metricsConfiguration,
    this.tracesConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationsConfiguration': ?destinationsConfiguration == null ? null : destinationsConfiguration!.toMap(),
      'logsConfiguration': ?logsConfiguration == null ? null : logsConfiguration!.toMap(),
      'metricsConfiguration': ?metricsConfiguration == null ? null : metricsConfiguration!.toMap(),
      'tracesConfiguration': ?tracesConfiguration == null ? null : tracesConfiguration!.toMap(),
    };
  }

  factory OpenTelemetryConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenTelemetryConfiguration(
      destinationsConfiguration: map['destinationsConfiguration'] == null ? null : DestinationsConfiguration.fromMap((map['destinationsConfiguration'] as Map).cast<String, dynamic>()),
      logsConfiguration: map['logsConfiguration'] == null ? null : LogsConfiguration.fromMap((map['logsConfiguration'] as Map).cast<String, dynamic>()),
      metricsConfiguration: map['metricsConfiguration'] == null ? null : MetricsConfiguration.fromMap((map['metricsConfiguration'] as Map).cast<String, dynamic>()),
      tracesConfiguration: map['tracesConfiguration'] == null ? null : TracesConfiguration.fromMap((map['tracesConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

