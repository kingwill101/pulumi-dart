// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'power_query_sink.dart';

/// Map Power Query mashup query to sink dataset(s).
class PowerQuerySinkMapping {
  /// List of sinks mapped to Power Query mashup query.
  final List<PowerQuerySink>? dataflowSinks;
  /// Name of the query in Power Query mashup document.
  final String? queryName;

  /// Creates a new [PowerQuerySinkMapping].
  /// [dataflowSinks] List of sinks mapped to Power Query mashup query.
  /// [queryName] Name of the query in Power Query mashup document.
  PowerQuerySinkMapping({
    this.dataflowSinks,
    this.queryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowSinks': ?dataflowSinks == null ? null : pulumi.Input.encodeList<PowerQuerySink, Map<String, dynamic>>(dataflowSinks!, (value) => value.toMap()),
      'queryName': ?queryName,
    };
  }

  factory PowerQuerySinkMapping.fromMap(Map<String, dynamic> map) {
    return PowerQuerySinkMapping(
      dataflowSinks: map['dataflowSinks'] == null ? null : pulumi.Input.decodeList<PowerQuerySink>(map['dataflowSinks'], (value) => PowerQuerySink.fromMap((value as Map).cast<String, dynamic>())),
      queryName: map['queryName'] == null ? null : map['queryName'] as String,
    );
  }
}

