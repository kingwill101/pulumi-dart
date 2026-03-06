// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destinations_spec_azure_monitor_metrics.dart';
import 'event_hub_destination.dart';
import 'event_hub_direct_destination.dart';
import 'log_analytics_destination.dart';
import 'monitoring_account_destination.dart';
import 'storage_blob_destination.dart';
import 'storage_table_destination.dart';

/// The specification of destinations.
class DataCollectionRuleDestinations {
  /// Azure Monitor Metrics destination.
  final pulumi.Input<DestinationsSpecAzureMonitorMetrics>? azureMonitorMetrics;
  /// List of Event Hubs destinations.
  final pulumi.Input<List<EventHubDestination>>? eventHubs;
  /// List of Event Hubs Direct destinations.
  final pulumi.Input<List<EventHubDirectDestination>>? eventHubsDirect;
  /// List of Log Analytics destinations.
  final pulumi.Input<List<LogAnalyticsDestination>>? logAnalytics;
  /// List of monitoring account destinations.
  final pulumi.Input<List<MonitoringAccountDestination>>? monitoringAccounts;
  /// List of storage accounts destinations.
  final pulumi.Input<List<StorageBlobDestination>>? storageAccounts;
  /// List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  final pulumi.Input<List<StorageBlobDestination>>? storageBlobsDirect;
  /// List of Storage Table Direct destinations.
  final pulumi.Input<List<StorageTableDestination>>? storageTablesDirect;

  /// Creates a new [DataCollectionRuleDestinations].
  /// [azureMonitorMetrics] Azure Monitor Metrics destination.
  /// [eventHubs] List of Event Hubs destinations.
  /// [eventHubsDirect] List of Event Hubs Direct destinations.
  /// [logAnalytics] List of Log Analytics destinations.
  /// [monitoringAccounts] List of monitoring account destinations.
  /// [storageAccounts] List of storage accounts destinations.
  /// [storageBlobsDirect] List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  /// [storageTablesDirect] List of Storage Table Direct destinations.
  const DataCollectionRuleDestinations({
    this.azureMonitorMetrics,
    this.eventHubs,
    this.eventHubsDirect,
    this.logAnalytics,
    this.monitoringAccounts,
    this.storageAccounts,
    this.storageBlobsDirect,
    this.storageTablesDirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorMetrics': ?pulumi.Input.mapOptionalInputValue<DestinationsSpecAzureMonitorMetrics, Map<String, dynamic>>(azureMonitorMetrics, (value) => value.toMap()),
      'eventHubs': ?pulumi.Input.mapOptionalInputValue<List<EventHubDestination>, List<Map<String, dynamic>>>(eventHubs, (value) => pulumi.Input.encodeList<EventHubDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHubsDirect': ?pulumi.Input.mapOptionalInputValue<List<EventHubDirectDestination>, List<Map<String, dynamic>>>(eventHubsDirect, (value) => pulumi.Input.encodeList<EventHubDirectDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logAnalytics': ?pulumi.Input.mapOptionalInputValue<List<LogAnalyticsDestination>, List<Map<String, dynamic>>>(logAnalytics, (value) => pulumi.Input.encodeList<LogAnalyticsDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitoringAccounts': ?pulumi.Input.mapOptionalInputValue<List<MonitoringAccountDestination>, List<Map<String, dynamic>>>(monitoringAccounts, (value) => pulumi.Input.encodeList<MonitoringAccountDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<StorageBlobDestination>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<StorageBlobDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBlobsDirect': ?pulumi.Input.mapOptionalInputValue<List<StorageBlobDestination>, List<Map<String, dynamic>>>(storageBlobsDirect, (value) => pulumi.Input.encodeList<StorageBlobDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageTablesDirect': ?pulumi.Input.mapOptionalInputValue<List<StorageTableDestination>, List<Map<String, dynamic>>>(storageTablesDirect, (value) => pulumi.Input.encodeList<StorageTableDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleDestinations.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinations(
      azureMonitorMetrics: (() { final guardedValue = map['azureMonitorMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationsSpecAzureMonitorMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHubs: (() { final guardedValue = map['eventHubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubDestination>(guardedValue, (value) => EventHubDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventHubsDirect: (() { final guardedValue = map['eventHubsDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubDirectDestination>(guardedValue, (value) => EventHubDirectDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logAnalytics: (() { final guardedValue = map['logAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogAnalyticsDestination>(guardedValue, (value) => LogAnalyticsDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monitoringAccounts: (() { final guardedValue = map['monitoringAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringAccountDestination>(guardedValue, (value) => MonitoringAccountDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageBlobDestination>(guardedValue, (value) => StorageBlobDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageBlobsDirect: (() { final guardedValue = map['storageBlobsDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageBlobDestination>(guardedValue, (value) => StorageBlobDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageTablesDirect: (() { final guardedValue = map['storageTablesDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageTableDestination>(guardedValue, (value) => StorageTableDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

