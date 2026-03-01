// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_express.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_filter.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_group_by.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_statistic.dart';

class GetHybridMonitorSlsTasksTaskSlsProcessConfig {
  final List<GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress> expresses;
  /// The conditions that are used to filter logs imported from Log Service.
  final List<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter> filters;
  /// The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL.
  final List<GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy> groupBies;
  /// The method that is used to aggregate logs imported from Log Service.
  final List<GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic> statistics;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfig].
  /// [expresses] Required.
  /// [filters] The conditions that are used to filter logs imported from Log Service.
  /// [groupBies] The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL.
  /// [statistics] The method that is used to aggregate logs imported from Log Service.
  GetHybridMonitorSlsTasksTaskSlsProcessConfig({
    required this.expresses,
    required this.filters,
    required this.groupBies,
    required this.statistics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expresses': pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress, Map<String, dynamic>>(expresses, (value) => value.toMap()),
      'filters': pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'groupBies': pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy, Map<String, dynamic>>(groupBies, (value) => value.toMap()),
      'statistics': pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic, Map<String, dynamic>>(statistics, (value) => value.toMap()),
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfig.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfig(
      expresses: pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress>(map['expresses'], (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress.fromMap((value as Map).cast<String, dynamic>())),
      filters: pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter>(map['filters'], (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter.fromMap((value as Map).cast<String, dynamic>())),
      groupBies: pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy>(map['groupBies'], (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy.fromMap((value as Map).cast<String, dynamic>())),
      statistics: pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic>(map['statistics'], (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

