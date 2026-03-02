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
  OpenTelemetryConfiguration({
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
      destinationsConfiguration: map['destinationsConfiguration'] == null ? null : (DestinationsConfiguration.fromMap((map['destinationsConfiguration'] as Map).cast<String, dynamic>())).input(),
      logsConfiguration: map['logsConfiguration'] == null ? null : (LogsConfiguration.fromMap((map['logsConfiguration'] as Map).cast<String, dynamic>())).input(),
      metricsConfiguration: map['metricsConfiguration'] == null ? null : (MetricsConfiguration.fromMap((map['metricsConfiguration'] as Map).cast<String, dynamic>())).input(),
      tracesConfiguration: map['tracesConfiguration'] == null ? null : (TracesConfiguration.fromMap((map['tracesConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

