// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_datas_data.dart';

/// Result data returned by getHybridMonitorDatas.
class GetHybridMonitorDatasResult {
  final List<GetHybridMonitorDatasData> datas;
  final String end;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String namespace;
  final String? outputFile;
  final String? period;
  final String promSql;
  final String start;

  /// Creates a new [GetHybridMonitorDatasResult].
  /// [datas] Required.
  /// [end] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [namespace] Required.
  /// [outputFile] Optional.
  /// [period] Optional.
  /// [promSql] Required.
  /// [start] Required.
  GetHybridMonitorDatasResult({
    required this.datas,
    required this.end,
    required this.id,
    required this.namespace,
    this.outputFile,
    this.period,
    required this.promSql,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datas': pulumi.Input.encodeList<GetHybridMonitorDatasData, Map<String, dynamic>>(datas, (value) => value.toMap()),
      'end': end,
      'id': id,
      'namespace': namespace,
      'outputFile': ?outputFile,
      'period': ?period,
      'promSql': promSql,
      'start': start,
    };
  }

  factory GetHybridMonitorDatasResult.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorDatasResult(
      datas: pulumi.Input.decodeList<GetHybridMonitorDatasData>(map['datas']!, (value) => GetHybridMonitorDatasData.fromMap((value as Map).cast<String, dynamic>())),
      end: map['end'] as String,
      id: map['id'] as String,
      namespace: map['namespace'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return guardedValue as String; })(),
      promSql: map['promSql'] as String,
      start: map['start'] as String,
    );
  }
}

