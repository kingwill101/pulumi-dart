// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables IIS logs to be collected by this data collection rule.
class IisLogsDataSource {
  /// Absolute paths file location
  final pulumi.Input<List<String>>? logDirectories;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// IIS streams
  final pulumi.Input<List<String>> streams;

  /// Creates a new [IisLogsDataSource].
  /// [logDirectories] Absolute paths file location
  /// [name] A friendly name for the data source.
  /// [streams] IIS streams
  IisLogsDataSource({
    this.logDirectories,
    this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDirectories': ?logDirectories,
      'name': ?name,
      'streams': streams,
    };
  }

  factory IisLogsDataSource.fromMap(Map<String, dynamic> map) {
    return IisLogsDataSource(
      logDirectories: (() { final guardedValue = map['logDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}

