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
  final pulumi.Input<DestinationsSpecResponseAzureMonitorMetrics>? azureMonitorMetrics;
  /// List of Event Hubs destinations.
  final pulumi.Input<List<EventHubDestinationResponse>>? eventHubs;
  /// List of Event Hubs Direct destinations.
  final pulumi.Input<List<EventHubDirectDestinationResponse>>? eventHubsDirect;
  /// List of Log Analytics destinations.
  final pulumi.Input<List<LogAnalyticsDestinationResponse>>? logAnalytics;
  /// List of monitoring account destinations.
  final pulumi.Input<List<MonitoringAccountDestinationResponse>>? monitoringAccounts;
  /// List of storage accounts destinations.
  final pulumi.Input<List<StorageBlobDestinationResponse>>? storageAccounts;
  /// List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  final pulumi.Input<List<StorageBlobDestinationResponse>>? storageBlobsDirect;
  /// List of Storage Table Direct destinations.
  final pulumi.Input<List<StorageTableDestinationResponse>>? storageTablesDirect;

  /// Creates a new [DataCollectionRuleResponseDestinations].
  /// [azureMonitorMetrics] Azure Monitor Metrics destination.
  /// [eventHubs] List of Event Hubs destinations.
  /// [eventHubsDirect] List of Event Hubs Direct destinations.
  /// [logAnalytics] List of Log Analytics destinations.
  /// [monitoringAccounts] List of monitoring account destinations.
  /// [storageAccounts] List of storage accounts destinations.
  /// [storageBlobsDirect] List of Storage Blob Direct destinations. To be used only for sending data directly to store from the agent.
  /// [storageTablesDirect] List of Storage Table Direct destinations.
  const DataCollectionRuleResponseDestinations({
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
      'azureMonitorMetrics': ?pulumi.Input.mapOptionalInputValue<DestinationsSpecResponseAzureMonitorMetrics, Map<String, dynamic>>(azureMonitorMetrics, (value) => value.toMap()),
      'eventHubs': ?pulumi.Input.mapOptionalInputValue<List<EventHubDestinationResponse>, List<Map<String, dynamic>>>(eventHubs, (value) => pulumi.Input.encodeList<EventHubDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHubsDirect': ?pulumi.Input.mapOptionalInputValue<List<EventHubDirectDestinationResponse>, List<Map<String, dynamic>>>(eventHubsDirect, (value) => pulumi.Input.encodeList<EventHubDirectDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logAnalytics': ?pulumi.Input.mapOptionalInputValue<List<LogAnalyticsDestinationResponse>, List<Map<String, dynamic>>>(logAnalytics, (value) => pulumi.Input.encodeList<LogAnalyticsDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitoringAccounts': ?pulumi.Input.mapOptionalInputValue<List<MonitoringAccountDestinationResponse>, List<Map<String, dynamic>>>(monitoringAccounts, (value) => pulumi.Input.encodeList<MonitoringAccountDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<StorageBlobDestinationResponse>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<StorageBlobDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageBlobsDirect': ?pulumi.Input.mapOptionalInputValue<List<StorageBlobDestinationResponse>, List<Map<String, dynamic>>>(storageBlobsDirect, (value) => pulumi.Input.encodeList<StorageBlobDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageTablesDirect': ?pulumi.Input.mapOptionalInputValue<List<StorageTableDestinationResponse>, List<Map<String, dynamic>>>(storageTablesDirect, (value) => pulumi.Input.encodeList<StorageTableDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleResponseDestinations.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleResponseDestinations(
      azureMonitorMetrics: (() { final guardedValue = map['azureMonitorMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationsSpecResponseAzureMonitorMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHubs: (() { final guardedValue = map['eventHubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubDestinationResponse>(guardedValue, (value) => EventHubDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventHubsDirect: (() { final guardedValue = map['eventHubsDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubDirectDestinationResponse>(guardedValue, (value) => EventHubDirectDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logAnalytics: (() { final guardedValue = map['logAnalytics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogAnalyticsDestinationResponse>(guardedValue, (value) => LogAnalyticsDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monitoringAccounts: (() { final guardedValue = map['monitoringAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringAccountDestinationResponse>(guardedValue, (value) => MonitoringAccountDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageBlobDestinationResponse>(guardedValue, (value) => StorageBlobDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageBlobsDirect: (() { final guardedValue = map['storageBlobsDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageBlobDestinationResponse>(guardedValue, (value) => StorageBlobDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageTablesDirect: (() { final guardedValue = map['storageTablesDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageTableDestinationResponse>(guardedValue, (value) => StorageTableDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
