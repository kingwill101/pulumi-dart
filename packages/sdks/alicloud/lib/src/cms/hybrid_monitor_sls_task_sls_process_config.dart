// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_sls_task_sls_process_config_express.dart';
import 'hybrid_monitor_sls_task_sls_process_config_filter.dart';
import 'hybrid_monitor_sls_task_sls_process_config_group_by.dart';
import 'hybrid_monitor_sls_task_sls_process_config_statistic.dart';

class HybridMonitorSlsTaskSlsProcessConfig {
  /// The extended field that specifies the result of basic operations that are performed on aggregation results.
  final pulumi.Input<List<HybridMonitorSlsTaskSlsProcessConfigExpress>>? expresses;
  /// The conditions that are used to filter logs imported from Log Service. See `filter` below.
  final pulumi.Input<HybridMonitorSlsTaskSlsProcessConfigFilter>? filter;
  /// The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL. See `group_by` below.
  final pulumi.Input<List<HybridMonitorSlsTaskSlsProcessConfigGroupBy>>? groupBies;
  /// The method that is used to aggregate logs imported from Log Service. See `statistics` below.
  final pulumi.Input<List<HybridMonitorSlsTaskSlsProcessConfigStatistic>>? statistics;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfig].
  /// [expresses] The extended field that specifies the result of basic operations that are performed on aggregation results.
  /// [filter] The conditions that are used to filter logs imported from Log Service. See `filter` below.
  /// [groupBies] The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL. See `group_by` below.
  /// [statistics] The method that is used to aggregate logs imported from Log Service. See `statistics` below.
  const HybridMonitorSlsTaskSlsProcessConfig({
    this.expresses,
    this.filter,
    this.groupBies,
    this.statistics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expresses': ?pulumi.Input.mapOptionalInputValue<List<HybridMonitorSlsTaskSlsProcessConfigExpress>, List<Map<String, dynamic>>>(expresses, (value) => pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigExpress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<HybridMonitorSlsTaskSlsProcessConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'groupBies': ?pulumi.Input.mapOptionalInputValue<List<HybridMonitorSlsTaskSlsProcessConfigGroupBy>, List<Map<String, dynamic>>>(groupBies, (value) => pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigGroupBy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statistics': ?pulumi.Input.mapOptionalInputValue<List<HybridMonitorSlsTaskSlsProcessConfigStatistic>, List<Map<String, dynamic>>>(statistics, (value) => pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfig.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfig(
      expresses: (() { final guardedValue = map['expresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigExpress>(guardedValue, (value) => HybridMonitorSlsTaskSlsProcessConfigExpress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HybridMonitorSlsTaskSlsProcessConfigFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupBies: (() { final guardedValue = map['groupBies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigGroupBy>(guardedValue, (value) => HybridMonitorSlsTaskSlsProcessConfigGroupBy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigStatistic>(guardedValue, (value) => HybridMonitorSlsTaskSlsProcessConfigStatistic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

