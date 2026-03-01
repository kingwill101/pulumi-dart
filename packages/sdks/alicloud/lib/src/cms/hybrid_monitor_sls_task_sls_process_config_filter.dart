// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_sls_task_sls_process_config_filter_filter.dart';

class HybridMonitorSlsTaskSlsProcessConfigFilter {
  /// The conditions that are used to filter logs imported from Log Service. See `filters` below.
  final List<HybridMonitorSlsTaskSlsProcessConfigFilterFilter>? filters;
  /// The relationship between multiple filter conditions. Valid values: `and`(default value), `or`.
  final String? relation;

  /// Creates a new [HybridMonitorSlsTaskSlsProcessConfigFilter].
  /// [filters] The conditions that are used to filter logs imported from Log Service. See `filters` below.
  /// [relation] The relationship between multiple filter conditions. Valid values: `and`(default value), `or`.
  HybridMonitorSlsTaskSlsProcessConfigFilter({
    this.filters,
    this.relation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<HybridMonitorSlsTaskSlsProcessConfigFilterFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'relation': ?relation,
    };
  }

  factory HybridMonitorSlsTaskSlsProcessConfigFilter.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskSlsProcessConfigFilter(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<HybridMonitorSlsTaskSlsProcessConfigFilterFilter>(map['filters'], (value) => HybridMonitorSlsTaskSlsProcessConfigFilterFilter.fromMap((value as Map).cast<String, dynamic>())),
      relation: map['relation'] == null ? null : map['relation'] as String,
    );
  }
}

