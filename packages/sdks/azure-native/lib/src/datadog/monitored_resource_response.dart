// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a resource currently being monitored by the Datadog monitor resource.
class MonitoredResourceResponse {
  /// The ARM id of the resource.
  final String? id;
  /// Reason for why the resource is sending logs (or why it is not sending).
  final String? reasonForLogsStatus;
  /// Reason for why the resource is sending metrics (or why it is not sending).
  final String? reasonForMetricsStatus;
  /// Flag indicating if resource is sending logs to Datadog.
  final bool? sendingLogs;
  /// Flag indicating if resource is sending metrics to Datadog.
  final bool? sendingMetrics;

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
      id: map['id'] == null ? null : map['id'] as String,
      reasonForLogsStatus: map['reasonForLogsStatus'] == null ? null : map['reasonForLogsStatus'] as String,
      reasonForMetricsStatus: map['reasonForMetricsStatus'] == null ? null : map['reasonForMetricsStatus'] as String,
      sendingLogs: map['sendingLogs'] == null ? null : map['sendingLogs'] as bool,
      sendingMetrics: map['sendingMetrics'] == null ? null : map['sendingMetrics'] as bool,
    );
  }
}

