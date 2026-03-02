// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of which syslog data will be collected and how it will be collected.
/// Only collected from Linux machines.
class SyslogDataSource {
  /// The list of facility names.
  final pulumi.Input<List<String>>? facilityNames;
  /// The log levels to collect.
  final pulumi.Input<List<String>>? logLevels;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>>? streams;

  /// Creates a new [SyslogDataSource].
  /// [facilityNames] The list of facility names.
  /// [logLevels] The log levels to collect.
  /// [name] A friendly name for the data source.
  /// [streams] List of streams that this data source will be sent to.
  SyslogDataSource({
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

  factory SyslogDataSource.fromMap(Map<String, dynamic> map) {
    return SyslogDataSource(
      facilityNames: map['facilityNames'] == null ? null : ((map['facilityNames']! as List).cast<String>()).input(),
      logLevels: map['logLevels'] == null ? null : ((map['logLevels']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      streams: map['streams'] == null ? null : ((map['streams']! as List).cast<String>()).input(),
    );
  }
}

