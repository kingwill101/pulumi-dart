// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_sls_task_sls_process_config_express.dart';
import 'hybrid_monitor_sls_task_sls_process_config_filter.dart';
import 'hybrid_monitor_sls_task_sls_process_config_group_by.dart';
import 'hybrid_monitor_sls_task_sls_process_config_statistic.dart';

class HybridMonitorSlsTaskSlsProcessConfig {
  /// The extended field that specifies the result of basic operations that are performed on aggregation results.
  final List<HybridMonitorSlsTaskSlsProcessConfigExpress>? expresses;
  /// The conditions that are used to filter logs imported from Log Service. See `filter` below.
  final HybridMonitorSlsTaskSlsProcessConfigFilter? filter;
  /// The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL. See `group_by` below.
  final List<HybridMonitorSlsTaskSlsProcessConfigGroupBy>? groupBies;
  /// The method that is used to aggregate logs imported from Log Service. See `statistics` below.
  final List<HybridMonitorSlsTaskSlsProcessConfigStatistic>? statistics;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfig].
  /// [expresses] The extended field that specifies the result of basic operations that are performed on aggregation results.
  /// [filter] The conditions that are used to filter logs imported from Log Service. See `filter` below.
  /// [groupBies] The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL. See `group_by` below.
  /// [statistics] The method that is used to aggregate logs imported from Log Service. See `statistics` below.
  HybridMonitorSlsTaskSlsProcessConfig({
    this.expresses,
    this.filter,
    this.groupBies,
    this.statistics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expresses': ?expresses == null ? null : pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigExpress, Map<String, dynamic>>(expresses!, (value) => value.toMap()),
      'filter': ?filter == null ? null : filter!.toMap(),
      'groupBies': ?groupBies == null ? null : pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigGroupBy, Map<String, dynamic>>(groupBies!, (value) => value.toMap()),
      'statistics': ?statistics == null ? null : pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigStatistic, Map<String, dynamic>>(statistics!, (value) => value.toMap()),
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfig.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfig(
      expresses: map['expresses'] == null ? null : pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigExpress>(map['expresses'], (value) => HybridMonitorSlsTaskSlsProcessConfigExpress.fromMap((value as Map).cast<String, dynamic>())),
      filter: map['filter'] == null ? null : HybridMonitorSlsTaskSlsProcessConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      groupBies: map['groupBies'] == null ? null : pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigGroupBy>(map['groupBies'], (value) => HybridMonitorSlsTaskSlsProcessConfigGroupBy.fromMap((value as Map).cast<String, dynamic>())),
      statistics: map['statistics'] == null ? null : pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigStatistic>(map['statistics'], (value) => HybridMonitorSlsTaskSlsProcessConfigStatistic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

