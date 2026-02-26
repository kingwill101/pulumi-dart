// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination2.dart';
import 'consumption_metering_config2.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfig2 {
  /// Configuration to use BigQuery as usage export destination.
  final BigQueryDestination2? bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  final ConsumptionMeteringConfig2? consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final bool? enableNetworkEgressMetering;

  ResourceUsageExportConfig2({
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

  factory ResourceUsageExportConfig2.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfig2(
      bigqueryDestination: map['bigqueryDestination'] == null
          ? null
          : BigQueryDestination2.fromMap(
              (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      consumptionMeteringConfig: map['consumptionMeteringConfig'] == null
          ? null
          : ConsumptionMeteringConfig2.fromMap(
              (map['consumptionMeteringConfig'] as Map)
                  .cast<String, dynamic>()),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] == null
          ? null
          : map['enableNetworkEgressMetering'] as bool,
    );
  }
}
