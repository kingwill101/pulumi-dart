// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destinations_spec_response_azure_monitor_metrics.dart';
import 'event_hub_destination_response.dart';
import 'event_hub_direct_destination_response.dart';
import 'log_analytics_destination_response.dart';
import 'monitoring_account_destination_response.dart';
import 'storage_blob_destination_response.dart';
import 'storage_table_destination_response.dart';

/// The specification of destinations.
class DataCollectionRuleResponseDestinations {
  /// Azure Monitor Metrics destination.
  final DestinationsSpecResponseAzureMonitorMetrics? azureMonitorMetrics;
  /// List of Event Hubs destinations.
  final List<EventHubDestinationResponse>? eventHubs;
  /// List of Event Hubs Direct destinations.
  final List<EventHubDirectDestinationResponse>? eventHubsDirect;
  /// List of Log Analytics destinations.
  final List<LogAnalyticsDestinationResponse>? logAnalytics;
  /// List of monitoring account destinations.
  final List<MonitoringAccountDestinationResponse>? monitoringAccounts;
  /// List of storage accounts destinations.
  final List<StorageBlobDestinationResponse>? storageAccounts;
  /// List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  final List<StorageBlobDestinationResponse>? storageBlobsDirect;
  /// List of Storage Table Direct destinations.
  final List<StorageTableDestinationResponse>? storageTablesDirect;

  /// Creates a new [DataCollectionRuleResponseDestinations].
  /// [azureMonitorMetrics] Azure Monitor Metrics destination.
  /// [eventHubs] List of Event Hubs destinations.
  /// [eventHubsDirect] List of Event Hubs Direct destinations.
  /// [logAnalytics] List of Log Analytics destinations.
  /// [monitoringAccounts] List of monitoring account destinations.
  /// [storageAccounts] List of storage accounts destinations.
  /// [storageBlobsDirect] List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  /// [storageTablesDirect] List of Storage Table Direct destinations.
  DataCollectionRuleResponseDestinations({
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
      'eventHubs': ?eventHubs == null ? null : pulumi.Input.encodeList<EventHubDestinationResponse, Map<String, dynamic>>(eventHubs!, (value) => value.toMap()),
      'eventHubsDirect': ?eventHubsDirect == null ? null : pulumi.Input.encodeList<EventHubDirectDestinationResponse, Map<String, dynamic>>(eventHubsDirect!, (value) => value.toMap()),
      'logAnalytics': ?logAnalytics == null ? null : pulumi.Input.encodeList<LogAnalyticsDestinationResponse, Map<String, dynamic>>(logAnalytics!, (value) => value.toMap()),
      'monitoringAccounts': ?monitoringAccounts == null ? null : pulumi.Input.encodeList<MonitoringAccountDestinationResponse, Map<String, dynamic>>(monitoringAccounts!, (value) => value.toMap()),
      'storageAccounts': ?storageAccounts == null ? null : pulumi.Input.encodeList<StorageBlobDestinationResponse, Map<String, dynamic>>(storageAccounts!, (value) => value.toMap()),
      'storageBlobsDirect': ?storageBlobsDirect == null ? null : pulumi.Input.encodeList<StorageBlobDestinationResponse, Map<String, dynamic>>(storageBlobsDirect!, (value) => value.toMap()),
      'storageTablesDirect': ?storageTablesDirect == null ? null : pulumi.Input.encodeList<StorageTableDestinationResponse, Map<String, dynamic>>(storageTablesDirect!, (value) => value.toMap()),
    };
  }

  factory DataCollectionRuleResponseDestinations.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleResponseDestinations(
      azureMonitorMetrics: map['azureMonitorMetrics'] == null ? null : DestinationsSpecResponseAzureMonitorMetrics.fromMap((map['azureMonitorMetrics'] as Map).cast<String, dynamic>()),
      eventHubs: map['eventHubs'] == null ? null : pulumi.Input.decodeList<EventHubDestinationResponse>(map['eventHubs'], (value) => EventHubDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      eventHubsDirect: map['eventHubsDirect'] == null ? null : pulumi.Input.decodeList<EventHubDirectDestinationResponse>(map['eventHubsDirect'], (value) => EventHubDirectDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      logAnalytics: map['logAnalytics'] == null ? null : pulumi.Input.decodeList<LogAnalyticsDestinationResponse>(map['logAnalytics'], (value) => LogAnalyticsDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      monitoringAccounts: map['monitoringAccounts'] == null ? null : pulumi.Input.decodeList<MonitoringAccountDestinationResponse>(map['monitoringAccounts'], (value) => MonitoringAccountDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Input.decodeList<StorageBlobDestinationResponse>(map['storageAccounts'], (value) => StorageBlobDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageBlobsDirect: map['storageBlobsDirect'] == null ? null : pulumi.Input.decodeList<StorageBlobDestinationResponse>(map['storageBlobsDirect'], (value) => StorageBlobDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageTablesDirect: map['storageTablesDirect'] == null ? null : pulumi.Input.decodeList<StorageTableDestinationResponse>(map['storageTablesDirect'], (value) => StorageTableDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

