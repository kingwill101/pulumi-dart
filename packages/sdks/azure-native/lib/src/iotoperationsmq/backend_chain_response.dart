// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'temporary_resource_limits_config_response.dart';

/// Desired properties of the Frontend Instances of the DMQTT Broker
class BackendChainResponse {
  /// Partitions is desired number of physical backend chains of the given distributed MQTT broker.
  final pulumi.Input<int> partitions;
  /// Redundancy Factor is desired numbers of broker instances in one chain.
  final pulumi.Input<int> redundancyFactor;
  /// Defines whether disk transfer is enabled or not.
  final pulumi.Input<bool>? temporaryDiskTransferEnabled;
  /// Defines the percentage usage of buffer pool above which disk transfer will start.
  final pulumi.Input<int>? temporaryDiskTransferHighWatermarkPercent;
  /// Defines the percentage usage of buffer pool below which disk transfer will stop.
  final pulumi.Input<int>? temporaryDiskTransferLowWatermarkPercent;
  /// Defines the limits for memory usage percent of the backend instances of the MQTT broker.
  final pulumi.Input<int>? temporaryMaxBackendMemUsagePercent;
  /// Defines the limits for resources of the backend instances of the MQTT broker.
  final pulumi.Input<TemporaryResourceLimitsConfigResponse>? temporaryResourceLimits;
  /// Number of logical backend workers per pod.
  final pulumi.Input<int>? workers;

  /// Creates a new [BackendChainResponse].
  /// [partitions] Partitions is desired number of physical backend chains of the given distributed MQTT broker.
  /// [redundancyFactor] Redundancy Factor is desired numbers of broker instances in one chain.
  /// [temporaryDiskTransferEnabled] Defines whether disk transfer is enabled or not.
  /// [temporaryDiskTransferHighWatermarkPercent] Defines the percentage usage of buffer pool above which disk transfer will start.
  /// [temporaryDiskTransferLowWatermarkPercent] Defines the percentage usage of buffer pool below which disk transfer will stop.
  /// [temporaryMaxBackendMemUsagePercent] Defines the limits for memory usage percent of the backend instances of the MQTT broker.
  /// [temporaryResourceLimits] Defines the limits for resources of the backend instances of the MQTT broker.
  /// [workers] Number of logical backend workers per pod.
  BackendChainResponse({
    required this.partitions,
    required this.redundancyFactor,
    this.temporaryDiskTransferEnabled,
    this.temporaryDiskTransferHighWatermarkPercent,
    this.temporaryDiskTransferLowWatermarkPercent,
    this.temporaryMaxBackendMemUsagePercent,
    this.temporaryResourceLimits,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitions': partitions,
      'redundancyFactor': redundancyFactor,
      'temporaryDiskTransferEnabled': ?temporaryDiskTransferEnabled,
      'temporaryDiskTransferHighWatermarkPercent': ?temporaryDiskTransferHighWatermarkPercent,
      'temporaryDiskTransferLowWatermarkPercent': ?temporaryDiskTransferLowWatermarkPercent,
      'temporaryMaxBackendMemUsagePercent': ?temporaryMaxBackendMemUsagePercent,
      'temporaryResourceLimits': ?pulumi.Input.mapOptionalInputValue<TemporaryResourceLimitsConfigResponse, Map<String, dynamic>>(temporaryResourceLimits, (value) => value.toMap()),
      'workers': ?workers,
    };
  }

  factory BackendChainResponse.fromMap(Map<String, dynamic> map) {
    return BackendChainResponse(
      partitions: (map['partitions'] as int).input(),
      redundancyFactor: (map['redundancyFactor'] as int).input(),
      temporaryDiskTransferEnabled: map['temporaryDiskTransferEnabled'] == null ? null : (map['temporaryDiskTransferEnabled'] as bool).input(),
      temporaryDiskTransferHighWatermarkPercent: map['temporaryDiskTransferHighWatermarkPercent'] == null ? null : (map['temporaryDiskTransferHighWatermarkPercent'] as int).input(),
      temporaryDiskTransferLowWatermarkPercent: map['temporaryDiskTransferLowWatermarkPercent'] == null ? null : (map['temporaryDiskTransferLowWatermarkPercent'] as int).input(),
      temporaryMaxBackendMemUsagePercent: map['temporaryMaxBackendMemUsagePercent'] == null ? null : (map['temporaryMaxBackendMemUsagePercent'] as int).input(),
      temporaryResourceLimits: map['temporaryResourceLimits'] == null ? null : (TemporaryResourceLimitsConfigResponse.fromMap((map['temporaryResourceLimits'] as Map).cast<String, dynamic>())).input(),
      workers: map['workers'] == null ? null : (map['workers'] as int).input(),
    );
  }
}

