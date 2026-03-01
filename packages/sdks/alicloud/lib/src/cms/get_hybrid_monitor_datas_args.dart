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
    required pulumi.Output<String> end,
    required pulumi.Output<String> namespace,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? period,
    required pulumi.Output<String> promSql,
    required pulumi.Output<String> start,
  }) :
      end = pulumi.Input.asInput<String>(end),
      namespace = pulumi.Input.asInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      period = pulumi.Input.asOptionalInput<String>(period),
      promSql = pulumi.Input.asInput<String>(promSql),
      start = pulumi.Input.asInput<String>(start);

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
      end: pulumi.Output.create<String>(map['end'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      promSql: pulumi.Output.create<String>(map['promSql'] as String),
      start: pulumi.Output.create<String>(map['start'] as String),
    );
  }
}

