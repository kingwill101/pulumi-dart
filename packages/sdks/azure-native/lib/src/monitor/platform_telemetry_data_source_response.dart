// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of platform telemetry data source configuration
class PlatformTelemetryDataSourceResponse {
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// List of platform telemetry streams to collect
  final pulumi.Input<List<String>> streams;

  /// Creates a new [PlatformTelemetryDataSourceResponse].
  /// [name] A friendly name for the data source.
  /// [streams] List of platform telemetry streams to collect
  PlatformTelemetryDataSourceResponse({
    this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'streams': streams,
    };
  }

  factory PlatformTelemetryDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return PlatformTelemetryDataSourceResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      streams: ((map['streams'] as List).cast<String>()).input(),
    );
  }
}

