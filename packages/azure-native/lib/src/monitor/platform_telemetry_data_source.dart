// ignore_for_file: unused_element, unnecessary_cast


/// Definition of platform telemetry data source configuration
class PlatformTelemetryDataSource {
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// List of platform telemetry streams to collect
  final List<String> streams;

  /// Creates a new [PlatformTelemetryDataSource].
  /// [name] A friendly name for the data source.
  /// [streams] List of platform telemetry streams to collect
  PlatformTelemetryDataSource({
    this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'streams': streams,
    };
  }

  factory PlatformTelemetryDataSource.fromMap(Map<String, dynamic> map) {
    return PlatformTelemetryDataSource(
      name: map['name'] == null ? null : map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

