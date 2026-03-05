// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config_filter_filter.dart';

class GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter {
  /// The conditions that are used to filter logs imported from Log Service.
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter>> filters;
  /// The relationship between multiple filter conditions.
  final pulumi.Input<String> relation;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter].
  /// [filters] The conditions that are used to filter logs imported from Log Service.
  /// [relation] The relationship between multiple filter conditions.
  GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter({
    required this.filters,
    required this.relation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': pulumi.Input.mapInputValue<List<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relation': relation,
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigFilter(
      filters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter>(map['filters']!, (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter.fromMap((value as Map).cast<String, dynamic>()))),
      relation: pulumi.Input.fromValue(map['relation'] as String),
    );
  }
}

