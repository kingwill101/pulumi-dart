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
  final DestinationsSpecAzureMonitorMetrics? azureMonitorMetrics;
  /// List of Event Hubs destinations.
  final List<EventHubDestination>? eventHubs;
  /// List of Event Hubs Direct destinations.
  final List<EventHubDirectDestination>? eventHubsDirect;
  /// List of Log Analytics destinations.
  final List<LogAnalyticsDestination>? logAnalytics;
  /// List of monitoring account destinations.
  final List<MonitoringAccountDestination>? monitoringAccounts;
  /// List of storage accounts destinations.
  final List<StorageBlobDestination>? storageAccounts;
  /// List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  final List<StorageBlobDestination>? storageBlobsDirect;
  /// List of Storage Table Direct destinations.
  final List<StorageTableDestination>? storageTablesDirect;

  /// Creates a new [DataCollectionRuleDestinations].
  /// [azureMonitorMetrics] Azure Monitor Metrics destination.
  /// [eventHubs] List of Event Hubs destinations.
  /// [eventHubsDirect] List of Event Hubs Direct destinations.
  /// [logAnalytics] List of Log Analytics destinations.
  /// [monitoringAccounts] List of monitoring account destinations.
  /// [storageAccounts] List of storage accounts destinations.
  /// [storageBlobsDirect] List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  /// [storageTablesDirect] List of Storage Table Direct destinations.
  DataCollectionRuleDestinations({
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
      'azureMonitorMetrics': ?azureMonitorMetrics == null ? null : azureMonitorMetrics!.toMap(),
      'eventHubs': ?eventHubs == null ? null : pulumi.Input.encodeList<EventHubDestination, Map<String, dynamic>>(eventHubs!, (value) => value.toMap()),
      'eventHubsDirect': ?eventHubsDirect == null ? null : pulumi.Input.encodeList<EventHubDirectDestination, Map<String, dynamic>>(eventHubsDirect!, (value) => value.toMap()),
      'logAnalytics': ?logAnalytics == null ? null : pulumi.Input.encodeList<LogAnalyticsDestination, Map<String, dynamic>>(logAnalytics!, (value) => value.toMap()),
      'monitoringAccounts': ?monitoringAccounts == null ? null : pulumi.Input.encodeList<MonitoringAccountDestination, Map<String, dynamic>>(monitoringAccounts!, (value) => value.toMap()),
      'storageAccounts': ?storageAccounts == null ? null : pulumi.Input.encodeList<StorageBlobDestination, Map<String, dynamic>>(storageAccounts!, (value) => value.toMap()),
      'storageBlobsDirect': ?storageBlobsDirect == null ? null : pulumi.Input.encodeList<StorageBlobDestination, Map<String, dynamic>>(storageBlobsDirect!, (value) => value.toMap()),
      'storageTablesDirect': ?storageTablesDirect == null ? null : pulumi.Input.encodeList<StorageTableDestination, Map<String, dynamic>>(storageTablesDirect!, (value) => value.toMap()),
    };
  }

  factory DataCollectionRuleDestinations.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDestinations(
      azureMonitorMetrics: map['azureMonitorMetrics'] == null ? null : DestinationsSpecAzureMonitorMetrics.fromMap((map['azureMonitorMetrics'] as Map).cast<String, dynamic>()),
      eventHubs: map['eventHubs'] == null ? null : pulumi.Input.decodeList<EventHubDestination>(map['eventHubs'], (value) => EventHubDestination.fromMap((value as Map).cast<String, dynamic>())),
      eventHubsDirect: map['eventHubsDirect'] == null ? null : pulumi.Input.decodeList<EventHubDirectDestination>(map['eventHubsDirect'], (value) => EventHubDirectDestination.fromMap((value as Map).cast<String, dynamic>())),
      logAnalytics: map['logAnalytics'] == null ? null : pulumi.Input.decodeList<LogAnalyticsDestination>(map['logAnalytics'], (value) => LogAnalyticsDestination.fromMap((value as Map).cast<String, dynamic>())),
      monitoringAccounts: map['monitoringAccounts'] == null ? null : pulumi.Input.decodeList<MonitoringAccountDestination>(map['monitoringAccounts'], (value) => MonitoringAccountDestination.fromMap((value as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<StorageBlobDestination>(map['storageAccounts'], (value) => StorageBlobDestination.fromMap((value as Map).cast<String, dynamic>())),
      storageBlobsDirect: map['storageBlobsDirect'] == null ? null : pulumi.Input.decodeList<StorageBlobDestination>(map['storageBlobsDirect'], (value) => StorageBlobDestination.fromMap((value as Map).cast<String, dynamic>())),
      storageTablesDirect: map['storageTablesDirect'] == null ? null : pulumi.Input.decodeList<StorageTableDestination>(map['storageTablesDirect'], (value) => StorageTableDestination.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

