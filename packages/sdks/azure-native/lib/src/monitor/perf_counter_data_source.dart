// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of which performance counters will be collected and how they will be collected by this data collection rule.
/// Collected from both Windows and Linux machines where the counter is present.
class PerfCounterDataSource {
  /// A list of specifier names of the performance counters you want to collect.
  /// Use a wildcard (*) to collect a counter for all instances.
  /// To get a list of performance counters on Windows, run the command 'typeperf'.
  final pulumi.Input<List<String>>? counterSpecifiers;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// The number of seconds between consecutive counter measurements (samples).
  final pulumi.Input<int>? samplingFrequencyInSeconds;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>>? streams;

  /// Creates a new [PerfCounterDataSource].
  /// [counterSpecifiers] A list of specifier names of the performance counters you want to collect.
  /// [name] A friendly name for the data source.
  /// [samplingFrequencyInSeconds] The number of seconds between consecutive counter measurements (samples).
  /// [streams] List of streams that this data source will be sent to.
  PerfCounterDataSource({
    this.counterSpecifiers,
    this.name,
    this.samplingFrequencyInSeconds,
    this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSpecifiers': ?counterSpecifiers,
      'name': ?name,
      'samplingFrequencyInSeconds': ?samplingFrequencyInSeconds,
      'streams': ?streams,
    };
  }

  factory PerfCounterDataSource.fromMap(Map<String, dynamic> map) {
    return PerfCounterDataSource(
      counterSpecifiers: map['counterSpecifiers'] == null ? null : ((map['counterSpecifiers']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      samplingFrequencyInSeconds: map['samplingFrequencyInSeconds'] == null ? null : (map['samplingFrequencyInSeconds']! as int).input(),
      streams: map['streams'] == null ? null : ((map['streams']! as List).cast<String>()).input(),
    );
  }
}

