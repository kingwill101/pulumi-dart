// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_express.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_filter.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_group_by.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_statistic.dart';

class GetHybridMonitorSlsTasksTaskSlsProcessConfig {
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress>>
  expresses;

  /// The conditions that are used to filter logs imported from Log Service.
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter>>
  filters;

  /// The dimension based on which data is aggregated. This parameter is equivalent to the GROUP BY clause in SQL.
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy>>
  groupBies;

  /// The method that is used to aggregate logs imported from Log Service.
  final pulumi.Input<
    List<GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic>
  >
  statistics;

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
      'expresses':
          pulumi.Input.mapInputValue<
            List<GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress>,
            List<Map<String, dynamic>>
          >(
            expresses,
            (value) =>
                pulumi.Input.encodeList<
                  GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'filters':
          pulumi.Input.mapInputValue<
            List<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'groupBies':
          pulumi.Input.mapInputValue<
            List<GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy>,
            List<Map<String, dynamic>>
          >(
            groupBies,
            (value) =>
                pulumi.Input.encodeList<
                  GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statistics':
          pulumi.Input.mapInputValue<
            List<GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic>,
            List<Map<String, dynamic>>
          >(
            statistics,
            (value) =>
                pulumi.Input.encodeList<
                  GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfig(
      expresses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress
        >(
          map['expresses']!,
          (value) =>
              GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      filters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter
        >(
          map['filters']!,
          (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      groupBies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy
        >(
          map['groupBies']!,
          (value) =>
              GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      statistics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic
        >(
          map['statistics']!,
          (value) =>
              GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
