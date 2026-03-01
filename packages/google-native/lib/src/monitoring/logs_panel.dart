// ignore_for_file: unused_element, unnecessary_cast

/// A widget that displays a stream of log.
class LogsPanel {
  /// A filter that chooses which log entries to return. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries.
  final String? filter;

  /// The names of logging resources to collect logs for. Currently only projects are supported. If empty, the widget will default to the host project.
  final List<String>? resourceNames;

  /// Creates a new [LogsPanel].
  /// [filter] A filter that chooses which log entries to return. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries.
  /// [resourceNames] The names of logging resources to collect logs for. Currently only projects are supported. If empty, the widget will default to the host project.
  LogsPanel({this.filter, this.resourceNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'resourceNames': ?resourceNames,
    };
  }

  factory LogsPanel.fromMap(Map<String, dynamic> map) {
    return LogsPanel(
      filter: map['filter'] == null ? null : map['filter'] as String,
      resourceNames: map['resourceNames'] == null
          ? null
          : (map['resourceNames'] as List).cast<String>(),
    );
  }
}
