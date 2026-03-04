// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a resource currently being monitored by the Datadog monitor resource.
class MonitoredResourceResponse {
  /// The ARM id of the resource.
  final pulumi.Input<String>? id;

  /// Reason for why the resource is sending logs (or why it is not sending).
  final pulumi.Input<String>? reasonForLogsStatus;

  /// Reason for why the resource is sending metrics (or why it is not sending).
  final pulumi.Input<String>? reasonForMetricsStatus;

  /// Flag indicating if resource is sending logs to Datadog.
  final pulumi.Input<bool>? sendingLogs;

  /// Flag indicating if resource is sending metrics to Datadog.
  final pulumi.Input<bool>? sendingMetrics;

  /// Creates a new [MonitoredResourceResponse].
  /// [id] The ARM id of the resource.
  /// [reasonForLogsStatus] Reason for why the resource is sending logs (or why it is not sending).
  /// [reasonForMetricsStatus] Reason for why the resource is sending metrics (or why it is not sending).
  /// [sendingLogs] Flag indicating if resource is sending logs to Datadog.
  /// [sendingMetrics] Flag indicating if resource is sending metrics to Datadog.
  MonitoredResourceResponse({
    this.id,
    this.reasonForLogsStatus,
    this.reasonForMetricsStatus,
    this.sendingLogs,
    this.sendingMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'reasonForLogsStatus': ?reasonForLogsStatus,
      'reasonForMetricsStatus': ?reasonForMetricsStatus,
      'sendingLogs': ?sendingLogs,
      'sendingMetrics': ?sendingMetrics,
    };
  }

  factory MonitoredResourceResponse.fromMap(Map<String, dynamic> map) {
    return MonitoredResourceResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reasonForLogsStatus: (() {
        final guardedValue = map['reasonForLogsStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reasonForMetricsStatus: (() {
        final guardedValue = map['reasonForMetricsStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sendingLogs: (() {
        final guardedValue = map['sendingLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sendingMetrics: (() {
        final guardedValue = map['sendingMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
