// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'power_query_sink.dart';

/// Map Power Query mashup query to sink dataset(s).
class PowerQuerySinkMapping {
  /// List of sinks mapped to Power Query mashup query.
  final pulumi.Input<List<PowerQuerySink>>? dataflowSinks;
  /// Name of the query in Power Query mashup document.
  final pulumi.Input<String>? queryName;

  /// Creates a new [PowerQuerySinkMapping].
  /// [dataflowSinks] List of sinks mapped to Power Query mashup query.
  /// [queryName] Name of the query in Power Query mashup document.
  const PowerQuerySinkMapping({
    this.dataflowSinks,
    this.queryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowSinks': ?pulumi.Input.mapOptionalInputValue<List<PowerQuerySink>, List<Map<String, dynamic>>>(dataflowSinks, (value) => pulumi.Input.encodeList<PowerQuerySink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryName': ?queryName,
    };
  }

  factory PowerQuerySinkMapping.fromMap(Map<String, dynamic> map) {
    return PowerQuerySinkMapping(
      dataflowSinks: (() { final guardedValue = map['dataflowSinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PowerQuerySink>(guardedValue, (value) => PowerQuerySink.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryName: (() { final guardedValue = map['queryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

