// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_destination_azure_monitor_metric.dart';
import 'get_data_collection_rule_destination_event_hub.dart';
import 'get_data_collection_rule_destination_event_hub_direct.dart';
import 'get_data_collection_rule_destination_log_analytic.dart';
import 'get_data_collection_rule_destination_monitor_account.dart';
import 'get_data_collection_rule_destination_storage_blob.dart';
import 'get_data_collection_rule_destination_storage_blob_direct.dart';
import 'get_data_collection_rule_destination_storage_table_direct.dart';

class GetDataCollectionRuleDestination {
  /// A `azure_monitor_metrics` block as defined above.
  final List<GetDataCollectionRuleDestinationAzureMonitorMetric> azureMonitorMetrics;
  /// One or more `event_hub` blocks as defined below.
  final GetDataCollectionRuleDestinationEventHub? eventHub;
  /// One or more `event_hub_direct` blocks as defined below.
  final GetDataCollectionRuleDestinationEventHubDirect? eventHubDirect;
  /// One or more `log_analytics` blocks as defined below.
  final List<GetDataCollectionRuleDestinationLogAnalytic> logAnalytics;
  /// One or more `monitor_account` blocks as defined below.
  final List<GetDataCollectionRuleDestinationMonitorAccount> monitorAccounts;
  /// One or more `storage_blob_direct` blocks as defined below.
  final List<GetDataCollectionRuleDestinationStorageBlobDirect> storageBlobDirects;
  /// One or more `storage_blob` blocks as defined below.
  final List<GetDataCollectionRuleDestinationStorageBlob> storageBlobs;
  /// One or more `storage_table_direct` blocks as defined below.
  final List<GetDataCollectionRuleDestinationStorageTableDirect> storageTableDirects;

  /// Creates a new [GetDataCollectionRuleDestination].
  /// [azureMonitorMetrics] A `azure_monitor_metrics` block as defined above.
  /// [eventHub] One or more `event_hub` blocks as defined below.
  /// [eventHubDirect] One or more `event_hub_direct` blocks as defined below.
  /// [logAnalytics] One or more `log_analytics` blocks as defined below.
  /// [monitorAccounts] One or more `monitor_account` blocks as defined below.
  /// [storageBlobDirects] One or more `storage_blob_direct` blocks as defined below.
  /// [storageBlobs] One or more `storage_blob` blocks as defined below.
  /// [storageTableDirects] One or more `storage_table_direct` blocks as defined below.
  GetDataCollectionRuleDestination({
    required this.azureMonitorMetrics,
    this.eventHub,
    this.eventHubDirect,
    required this.logAnalytics,
    required this.monitorAccounts,
    required this.storageBlobDirects,
    required this.storageBlobs,
    required this.storageTableDirects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorMetrics': pulumi.Input.encodeList<GetDataCollectionRuleDestinationAzureMonitorMetric, Map<String, dynamic>>(azureMonitorMetrics, (value) => value.toMap()),
      'eventHub': ?eventHub == null ? null : eventHub!.toMap(),
      'eventHubDirect': ?eventHubDirect == null ? null : eventHubDirect!.toMap(),
      'logAnalytics': pulumi.Input.encodeList<GetDataCollectionRuleDestinationLogAnalytic, Map<String, dynamic>>(logAnalytics, (value) => value.toMap()),
      'monitorAccounts': pulumi.Input.encodeList<GetDataCollectionRuleDestinationMonitorAccount, Map<String, dynamic>>(monitorAccounts, (value) => value.toMap()),
      'storageBlobDirects': pulumi.Input.encodeList<GetDataCollectionRuleDestinationStorageBlobDirect, Map<String, dynamic>>(storageBlobDirects, (value) => value.toMap()),
      'storageBlobs': pulumi.Input.encodeList<GetDataCollectionRuleDestinationStorageBlob, Map<String, dynamic>>(storageBlobs, (value) => value.toMap()),
      'storageTableDirects': pulumi.Input.encodeList<GetDataCollectionRuleDestinationStorageTableDirect, Map<String, dynamic>>(storageTableDirects, (value) => value.toMap()),
    };
  }

  factory GetDataCollectionRuleDestination.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestination(
      azureMonitorMetrics: pulumi.Input.decodeList<GetDataCollectionRuleDestinationAzureMonitorMetric>(map['azureMonitorMetrics'], (value) => GetDataCollectionRuleDestinationAzureMonitorMetric.fromMap((value as Map).cast<String, dynamic>())),
      eventHub: map['eventHub'] == null ? null : GetDataCollectionRuleDestinationEventHub.fromMap((map['eventHub'] as Map).cast<String, dynamic>()),
      eventHubDirect: map['eventHubDirect'] == null ? null : GetDataCollectionRuleDestinationEventHubDirect.fromMap((map['eventHubDirect'] as Map).cast<String, dynamic>()),
      logAnalytics: pulumi.Input.decodeList<GetDataCollectionRuleDestinationLogAnalytic>(map['logAnalytics'], (value) => GetDataCollectionRuleDestinationLogAnalytic.fromMap((value as Map).cast<String, dynamic>())),
      monitorAccounts: pulumi.Input.decodeList<GetDataCollectionRuleDestinationMonitorAccount>(map['monitorAccounts'], (value) => GetDataCollectionRuleDestinationMonitorAccount.fromMap((value as Map).cast<String, dynamic>())),
      storageBlobDirects: pulumi.Input.decodeList<GetDataCollectionRuleDestinationStorageBlobDirect>(map['storageBlobDirects'], (value) => GetDataCollectionRuleDestinationStorageBlobDirect.fromMap((value as Map).cast<String, dynamic>())),
      storageBlobs: pulumi.Input.decodeList<GetDataCollectionRuleDestinationStorageBlob>(map['storageBlobs'], (value) => GetDataCollectionRuleDestinationStorageBlob.fromMap((value as Map).cast<String, dynamic>())),
      storageTableDirects: pulumi.Input.decodeList<GetDataCollectionRuleDestinationStorageTableDirect>(map['storageTableDirects'], (value) => GetDataCollectionRuleDestinationStorageTableDirect.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

