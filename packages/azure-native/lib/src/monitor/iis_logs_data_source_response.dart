// ignore_for_file: unused_element, unnecessary_cast


/// Enables IIS logs to be collected by this data collection rule.
class IisLogsDataSourceResponse {
  /// Absolute paths file location
  final List<String>? logDirectories;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// IIS streams
  final List<String> streams;

  /// Creates a new [IisLogsDataSourceResponse].
  /// [logDirectories] Absolute paths file location
  /// [name] A friendly name for the data source.
  /// [streams] IIS streams
  IisLogsDataSourceResponse({
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

  factory IisLogsDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return IisLogsDataSourceResponse(
      logDirectories: map['logDirectories'] == null ? null : (map['logDirectories'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

