// ignore_for_file: unused_element, unnecessary_cast


/// Enables Firewall logs to be collected by this data collection rule.
class WindowsFirewallLogsDataSourceResponse {
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// Firewall logs streams
  final List<String> streams;

  /// Creates a new [WindowsFirewallLogsDataSourceResponse].
  /// [name] A friendly name for the data source.
  /// [streams] Firewall logs streams
  WindowsFirewallLogsDataSourceResponse({
    this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'streams': streams,
    };
  }

  factory WindowsFirewallLogsDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return WindowsFirewallLogsDataSourceResponse(
      name: map['name'] == null ? null : map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

