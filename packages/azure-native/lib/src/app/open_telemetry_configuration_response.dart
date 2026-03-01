// ignore_for_file: unused_element, unnecessary_cast

import 'destinations_configuration_response.dart';
import 'logs_configuration_response.dart';
import 'metrics_configuration_response.dart';
import 'traces_configuration_response.dart';

/// Configuration of Open Telemetry
class OpenTelemetryConfigurationResponse {
  /// Open telemetry destinations configuration
  final DestinationsConfigurationResponse? destinationsConfiguration;
  /// Open telemetry logs configuration
  final LogsConfigurationResponse? logsConfiguration;
  /// Open telemetry metrics configuration
  final MetricsConfigurationResponse? metricsConfiguration;
  /// Open telemetry trace configuration
  final TracesConfigurationResponse? tracesConfiguration;

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
      'destinationsConfiguration': ?destinationsConfiguration == null ? null : destinationsConfiguration!.toMap(),
      'logsConfiguration': ?logsConfiguration == null ? null : logsConfiguration!.toMap(),
      'metricsConfiguration': ?metricsConfiguration == null ? null : metricsConfiguration!.toMap(),
      'tracesConfiguration': ?tracesConfiguration == null ? null : tracesConfiguration!.toMap(),
    };
  }

  factory OpenTelemetryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OpenTelemetryConfigurationResponse(
      destinationsConfiguration: map['destinationsConfiguration'] == null ? null : DestinationsConfigurationResponse.fromMap((map['destinationsConfiguration'] as Map).cast<String, dynamic>()),
      logsConfiguration: map['logsConfiguration'] == null ? null : LogsConfigurationResponse.fromMap((map['logsConfiguration'] as Map).cast<String, dynamic>()),
      metricsConfiguration: map['metricsConfiguration'] == null ? null : MetricsConfigurationResponse.fromMap((map['metricsConfiguration'] as Map).cast<String, dynamic>()),
      tracesConfiguration: map['tracesConfiguration'] == null ? null : TracesConfigurationResponse.fromMap((map['tracesConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

