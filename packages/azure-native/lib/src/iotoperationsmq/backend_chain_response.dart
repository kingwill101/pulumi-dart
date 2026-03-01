// ignore_for_file: unused_element, unnecessary_cast

import 'temporary_resource_limits_config_response.dart';

/// Desired properties of the Frontend Instances of the DMQTT Broker
class BackendChainResponse {
  /// Partitions is desired number of physical backend chains of the given distributed MQTT broker.
  final int partitions;
  /// Redundancy Factor is desired numbers of broker instances in one chain.
  final int redundancyFactor;
  /// Defines whether disk transfer is enabled or not.
  final bool? temporaryDiskTransferEnabled;
  /// Defines the percentage usage of buffer pool above which disk transfer will start.
  final int? temporaryDiskTransferHighWatermarkPercent;
  /// Defines the percentage usage of buffer pool below which disk transfer will stop.
  final int? temporaryDiskTransferLowWatermarkPercent;
  /// Defines the limits for memory usage percent of the backend instances of the MQTT broker.
  final int? temporaryMaxBackendMemUsagePercent;
  /// Defines the limits for resources of the backend instances of the MQTT broker.
  final TemporaryResourceLimitsConfigResponse? temporaryResourceLimits;
  /// Number of logical backend workers per pod.
  final int? workers;

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
      'temporaryResourceLimits': ?temporaryResourceLimits == null ? null : temporaryResourceLimits!.toMap(),
      'workers': ?workers,
    };
  }

  factory BackendChainResponse.fromMap(Map<String, dynamic> map) {
    return BackendChainResponse(
      partitions: map['partitions'] as int,
      redundancyFactor: map['redundancyFactor'] as int,
      temporaryDiskTransferEnabled: map['temporaryDiskTransferEnabled'] == null ? null : map['temporaryDiskTransferEnabled'] as bool,
      temporaryDiskTransferHighWatermarkPercent: map['temporaryDiskTransferHighWatermarkPercent'] == null ? null : map['temporaryDiskTransferHighWatermarkPercent'] as int,
      temporaryDiskTransferLowWatermarkPercent: map['temporaryDiskTransferLowWatermarkPercent'] == null ? null : map['temporaryDiskTransferLowWatermarkPercent'] as int,
      temporaryMaxBackendMemUsagePercent: map['temporaryMaxBackendMemUsagePercent'] == null ? null : map['temporaryMaxBackendMemUsagePercent'] as int,
      temporaryResourceLimits: map['temporaryResourceLimits'] == null ? null : TemporaryResourceLimitsConfigResponse.fromMap((map['temporaryResourceLimits'] as Map).cast<String, dynamic>()),
      workers: map['workers'] == null ? null : map['workers'] as int,
    );
  }
}

