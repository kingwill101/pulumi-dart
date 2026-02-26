// ignore_for_file: unused_element, unnecessary_cast

import 'big_query_destination_response2.dart';
import 'consumption_metering_config_response2.dart';

/// Configuration for exporting cluster resource usages.
class ResourceUsageExportConfigResponse2 {
  /// Configuration to use BigQuery as usage export destination.
  final BigQueryDestinationResponse2 bigqueryDestination;

  /// Configuration to enable resource consumption metering.
  final ConsumptionMeteringConfigResponse2 consumptionMeteringConfig;

  /// Whether to enable network egress metering for this cluster. If enabled, a daemonset will be created in the cluster to meter network egress traffic.
  final bool enableNetworkEgressMetering;

  ResourceUsageExportConfigResponse2({
    required this.bigqueryDestination,
    required this.consumptionMeteringConfig,
    required this.enableNetworkEgressMetering,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryDestination'] = bigqueryDestination.toMap();
    map['consumptionMeteringConfig'] = consumptionMeteringConfig.toMap();
    map['enableNetworkEgressMetering'] = enableNetworkEgressMetering;
    return map;
  }

  factory ResourceUsageExportConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ResourceUsageExportConfigResponse2(
      bigqueryDestination: BigQueryDestinationResponse2.fromMap(
          (map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      consumptionMeteringConfig: ConsumptionMeteringConfigResponse2.fromMap(
          (map['consumptionMeteringConfig'] as Map).cast<String, dynamic>()),
      enableNetworkEgressMetering: map['enableNetworkEgressMetering'] as bool,
    );
  }
}
