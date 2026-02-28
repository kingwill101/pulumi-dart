// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_resource_usage_export_config_bigquery_destination.dart';

class ClusterResourceUsageExportConfig {
  /// Parameters for using BigQuery as the destination of resource usage export.
  ///
  /// * `bigquery_destination.dataset_id` (Required) - The ID of a BigQuery Dataset. For Example:
  final ClusterResourceUsageExportConfigBigqueryDestination bigqueryDestination;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created
  /// in the cluster to meter network egress traffic.
  final bool? enableNetworkEgressMetering;

  /// Whether to enable resource
  /// consumption metering on this cluster. When enabled, a table will be created in
  /// the resource export BigQuery dataset to store resource consumption data. The
  /// resulting table can be joined with the resource usage table or with BigQuery
  /// billing export. Defaults to `true`.
  final bool? enableResourceConsumptionMetering;

  /// Creates a new [ClusterResourceUsageExportConfig].
  /// [bigqueryDestination] Parameters for using BigQuery as the destination of resource usage export.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created
  /// [enableResourceConsumptionMetering] Whether to enable resource
  ClusterResourceUsageExportConfig({
    required this.bigqueryDestination,
    this.enableNetworkEgressMetering,
    this.enableResourceConsumptionMetering,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDestination'] = bigqueryDestination.toMap();
    final enableNetworkEgressMeteringValue = enableNetworkEgressMetering;
    if (enableNetworkEgressMeteringValue != null) {
      map['enableNetworkEgressMetering'] = enableNetworkEgressMeteringValue;
    }
    final enableResourceConsumptionMeteringValue =
        enableResourceConsumptionMetering;
    if (enableResourceConsumptionMeteringValue != null) {
      map['enableResourceConsumptionMetering'] =
          enableResourceConsumptionMeteringValue;
    }
    return map;
  }

  factory ClusterResourceUsageExportConfig.fromMap(Map<String, dynamic> map) {
    return ClusterResourceUsageExportConfig(
      bigqueryDestination:
          ClusterResourceUsageExportConfigBigqueryDestination.fromMap(
              (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] == null
          ? null
          : map['enableNetworkEgressMetering'] as bool,
      enableResourceConsumptionMetering:
          map['enableResourceConsumptionMetering'] == null
              ? null
              : map['enableResourceConsumptionMetering'] as bool,
    );
  }
}
