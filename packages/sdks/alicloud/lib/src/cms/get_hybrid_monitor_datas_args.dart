// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_get_hybrid_monitor_datas_get_hybrid_monitor_datas_args_doc}
/// Arguments for getHybridMonitorDatas.
/// {@endtemplate}
/// {@macro pulumi_cms_get_hybrid_monitor_datas_get_hybrid_monitor_datas_args_doc}
class GetHybridMonitorDatasArgs {
  /// The timestamp that specifies the end of the time range to query.
  final pulumi.Input<String> end;
  /// The name of the namespace.
  final pulumi.Input<String> namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The interval at which monitoring data is collected. Unit: seconds.
  final pulumi.Input<String>? period;
  /// The name of the metric. Note PromQL statements are supported.
  final pulumi.Input<String> promSql;
  /// The timestamp that specifies the beginning of the time range to query.
  final pulumi.Input<String> start;

  /// Creates a new [GetHybridMonitorDatasArgs].
  /// [end] The timestamp that specifies the end of the time range to query.
  /// [namespace] The name of the namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [period] The interval at which monitoring data is collected. Unit: seconds.
  /// [promSql] The name of the metric. Note PromQL statements are supported.
  /// [start] The timestamp that specifies the beginning of the time range to query.
  GetHybridMonitorDatasArgs({
    required this.end,
    required this.namespace,
    this.outputFile,
    this.period,
    required this.promSql,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'namespace': namespace,
      'outputFile': ?outputFile,
      'period': ?period,
      'promSql': promSql,
      'start': start,
    };
  }

  factory GetHybridMonitorDatasArgs.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorDatasArgs(
      end: (map['end'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      promSql: (map['promSql'] as String).input(),
      start: (map['start'] as String).input(),
    );
  }
}

