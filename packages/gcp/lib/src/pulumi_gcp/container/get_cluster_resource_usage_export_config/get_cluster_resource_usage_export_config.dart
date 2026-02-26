// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_resource_usage_export_config_bigquery_destination/get_cluster_resource_usage_export_config_bigquery_destination.dart';

class GetClusterResourceUsageExportConfig {
  /// Parameters for using BigQuery as the destination of resource usage export.
  final List<GetClusterResourceUsageExportConfigBigqueryDestination>
      bigqueryDestinations;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final bool enableNetworkEgressMetering;

  /// Whether to enable resource consumption metering on this cluster. When enabled, a table will be created in the resource export BigQuery dataset to store resource consumption data. The resulting table can be joined with the resource usage table or with BigQuery billing export. Defaults to true.
  final bool enableResourceConsumptionMetering;

  GetClusterResourceUsageExportConfig({
    required this.bigqueryDestinations,
    required this.enableNetworkEgressMetering,
    required this.enableResourceConsumptionMetering,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDestinations'] = Input.encodeList<
        GetClusterResourceUsageExportConfigBigqueryDestination,
        Map<String, dynamic>>(bigqueryDestinations, (value) => value.toMap());
    map['enableNetworkEgressMetering'] = enableNetworkEgressMetering;
    map['enableResourceConsumptionMetering'] =
        enableResourceConsumptionMetering;
    return map;
  }

  factory GetClusterResourceUsageExportConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterResourceUsageExportConfig(
      bigqueryDestinations: Input.decodeList<
              GetClusterResourceUsageExportConfigBigqueryDestination>(
          map['bigqueryDestinations'],
          (value) =>
              GetClusterResourceUsageExportConfigBigqueryDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] as bool,
      enableResourceConsumptionMetering:
          map['enableResourceConsumptionMetering'] as bool,
    );
  }
}
