// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_container_v1beta1.dart';
import 'consumption_metering_config_container_v1beta1.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfigContainerV1beta1 {
  /// Configuration to use BigQuery as usage export destination.
  final BigQueryDestinationContainerV1beta1? bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  final ConsumptionMeteringConfigContainerV1beta1? consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final bool? enableNetworkEgressMetering;

  /// Creates a new [ResourceUsageExportConfigContainerV1beta1].
  /// [bigqueryDestination] Configuration to use BigQuery as usage export destination.
  /// [consumptionMeteringConfig] Configuration to enable resource consumption metering.
  /// [enableNetworkEgressMetering] Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  ResourceUsageExportConfigContainerV1beta1({
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

  factory ResourceUsageExportConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ResourceUsageExportConfigContainerV1beta1(
      bigqueryDestination: map['bigqueryDestination'] == null
          ? null
          : BigQueryDestinationContainerV1beta1.fromMap(
              (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      consumptionMeteringConfig: map['consumptionMeteringConfig'] == null
          ? null
          : ConsumptionMeteringConfigContainerV1beta1.fromMap(
              (map['consumptionMeteringConfig'] as Map)
                  .cast<String, dynamic>()),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] == null
          ? null
          : map['enableNetworkEgressMetering'] as bool,
    );
  }
}
