// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of which Windows Event Log events will be collected and how they will be collected.
/// Only collected from Windows machines.
class WindowsEventLogDataSourceResponse {
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>>? streams;
  /// A list of Windows Event Log queries in XPATH format.
  final pulumi.Input<List<String>>? xPathQueries;

  /// Creates a new [WindowsEventLogDataSourceResponse].
  /// [name] A friendly name for the data source.
  /// [streams] List of streams that this data source will be sent to.
  /// [xPathQueries] A list of Windows Event Log queries in XPATH format.
  WindowsEventLogDataSourceResponse({
    this.name,
    this.streams,
    this.xPathQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'streams': ?streams,
      'xPathQueries': ?xPathQueries,
    };
  }

  factory WindowsEventLogDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return WindowsEventLogDataSourceResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      streams: map['streams'] == null ? null : ((map['streams'] as List).cast<String>()).input(),
      xPathQueries: map['xPathQueries'] == null ? null : ((map['xPathQueries'] as List).cast<String>()).input(),
    );
  }
}

