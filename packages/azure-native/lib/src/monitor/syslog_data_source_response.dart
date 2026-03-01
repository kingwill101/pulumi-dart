// ignore_for_file: unused_element, unnecessary_cast


/// Definition of which syslog data will be collected and how it will be collected.
/// Only collected from Linux machines.
class SyslogDataSourceResponse {
  /// The list of facility names.
  final List<String>? facilityNames;
  /// The log levels to collect.
  final List<String>? logLevels;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final List<String>? streams;

  /// Creates a new [SyslogDataSourceResponse].
  /// [facilityNames] The list of facility names.
  /// [logLevels] The log levels to collect.
  /// [name] A friendly name for the data source.
  /// [streams] List of streams that this data source will be sent to.
  SyslogDataSourceResponse({
    this.facilityNames,
    this.logLevels,
    this.name,
    this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilityNames': ?facilityNames,
      'logLevels': ?logLevels,
      'name': ?name,
      'streams': ?streams,
    };
  }

  factory SyslogDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return SyslogDataSourceResponse(
      facilityNames: map['facilityNames'] == null ? null : (map['facilityNames'] as List).cast<String>(),
      logLevels: map['logLevels'] == null ? null : (map['logLevels'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      streams: map['streams'] == null ? null : (map['streams'] as List).cast<String>(),
    );
  }
}

