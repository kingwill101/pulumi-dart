// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination.dart';
import 'consumption_metering_config.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfig {
  /// Configuration to use BigQuery as usage export destination.
  final BigQueryDestination? bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  final ConsumptionMeteringConfig? consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final bool? enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfig].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  ResourceUsageExportConfig({
    this.bigqueryDestination,
    this.consumptionMeteringConfig,
    this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryDestinationValue = bigqueryDestination;
    if (bigqueryDestinationValue != null) {
      map['bigqueryDestination'] = bigqueryDestinationValue.toMap();
    }
    final consumptionMeteringConfigValue = consumptionMeteringConfig;
    if (consumptionMeteringConfigValue != null) {
      map['consumptionMeteringConfig'] = consumptionMeteringConfigValue.toMap();
    }
    final enableNetworkEgressMeteringValue = enableNetworkEgressMetering;
    if (enableNetworkEgressMeteringValue != null) {
      map['enableNetworkEgressMetering'] = enableNetworkEgressMeteringValue;
    }
    return map;
  }

  factory ResourceUsageExportConfig.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfig(
      bigqueryDestination: map['bigqueryDestination'] == null
          ? null
          : BigQueryDestination.fromMap(
              (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      consumptionMeteringConfig: map['consumptionMeteringConfig'] == null
          ? null
          : ConsumptionMeteringConfig.fromMap(
              (map['consumptionMeteringConfig'] as Map)
                  .cast<String, dynamic>()),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] == null
          ? null
          : map['enableNetworkEgressMetering'] as bool,
    );
  }
}
