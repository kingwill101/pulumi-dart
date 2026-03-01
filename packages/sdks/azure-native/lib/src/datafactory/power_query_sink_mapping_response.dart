// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'power_query_sink_response.dart';

/// Map Power Query mashup query to sink dataset(s).
class PowerQuerySinkMappingResponse {
  /// List of sinks mapped to Power Query mashup query.
  final List<PowerQuerySinkResponse>? dataflowSinks;
  /// Name of the query in Power Query mashup document.
  final String? queryName;

  /// Creates a new [PowerQuerySinkMappingResponse].
  /// [dataflowSinks] List of sinks mapped to Power Query mashup query.
  /// [queryName] Name of the query in Power Query mashup document.
  PowerQuerySinkMappingResponse({
    this.dataflowSinks,
    this.queryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataflowSinks': ?dataflowSinks == null ? null : pulumi.Input.encodeList<PowerQuerySinkResponse, Map<String, dynamic>>(dataflowSinks!, (value) => value.toMap()),
      'queryName': ?queryName,
    };
  }

  factory PowerQuerySinkMappingResponse.fromMap(Map<String, dynamic> map) {
    return PowerQuerySinkMappingResponse(
      dataflowSinks: map['dataflowSinks'] == null ? null : pulumi.Input.decodeList<PowerQuerySinkResponse>(map['dataflowSinks'], (value) => PowerQuerySinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      queryName: map['queryName'] == null ? null : map['queryName'] as String,
    );
  }
}

