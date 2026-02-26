// ignore_for_file: unused_element, unnecessary_cast

/// A widget that displays a stream of log.
class LogsPanelResponse {
  /// A filter that chooses which log entries to return. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries.
  final String filter;

  /// The names of logging resources to collect logs for. Currently only projects are supported. If empty, the widget will default to the host project.
  final List<String> resourceNames;

  LogsPanelResponse({
    required this.filter,
    required this.resourceNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['resourceNames'] = resourceNames;
    return map;
  }

  factory LogsPanelResponse.fromMap(Map<String, dynamic> map) {
    return LogsPanelResponse(
      filter: map['filter'] as String,
      resourceNames: (map['resourceNames'] as List).cast<String>(),
    );
  }
}
