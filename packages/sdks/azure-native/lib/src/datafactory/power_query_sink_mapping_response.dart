// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'power_query_sink_response.dart';

/// Map Power Query mashup query to sink dataset(s).
class PowerQuerySinkMappingResponse {
  /// List of sinks mapped to Power Query mashup query.
  final pulumi.Input<List<PowerQuerySinkResponse>>? dataflowSinks;
  /// Name of the query in Power Query mashup document.
  final pulumi.Input<String>? queryName;

  /// Creates a new [PowerQuerySinkMappingResponse].
  /// [dataflowSinks] List of sinks mapped to Power Query mashup query.
  /// [queryName] Name of the query in Power Query mashup document.
  PowerQuerySinkMappingResponse({
    this.dataflowSinks,
    this.queryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowSinks': ?pulumi.Input.mapOptionalInputValue<List<PowerQuerySinkResponse>, List<Map<String, dynamic>>>(dataflowSinks, (value) => pulumi.Input.encodeList<PowerQuerySinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queryName': ?queryName,
    };
  }

  factory PowerQuerySinkMappingResponse.fromMap(Map<String, dynamic> map) {
    return PowerQuerySinkMappingResponse(
      dataflowSinks: (() { final guardedValue = map['dataflowSinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PowerQuerySinkResponse>(guardedValue, (value) => PowerQuerySinkResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queryName: (() { final guardedValue = map['queryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

