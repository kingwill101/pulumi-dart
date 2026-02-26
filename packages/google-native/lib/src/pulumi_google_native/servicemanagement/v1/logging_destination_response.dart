// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of a specific logging destination (the producer project or the consumer project).
class LoggingDestinationResponse {
  /// Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by "/".
  final List<String> logs;

  /// The monitored resource type. The type must be defined in the Service.monitored_resources section.
  final String monitoredResource;

  LoggingDestinationResponse({
    required this.logs,
    required this.monitoredResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logs'] = logs;
    map['monitoredResource'] = monitoredResource;
    return map;
  }

  factory LoggingDestinationResponse.fromMap(Map<String, dynamic> map) {
    return LoggingDestinationResponse(
      logs: (map['logs'] as List).cast<String>(),
      monitoredResource: map['monitoredResource'] as String,
    );
  }
}
