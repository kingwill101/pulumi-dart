// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables Firewall logs to be collected by this data collection rule.
class WindowsFirewallLogsDataSourceResponse {
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String?>? name;
  /// Firewall logs streams
  final pulumi.Input<List<String>> streams;

  /// Creates a new [WindowsFirewallLogsDataSourceResponse].
  /// [name] A friendly name for the data source.
  /// [streams] Firewall logs streams
  const WindowsFirewallLogsDataSourceResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}
