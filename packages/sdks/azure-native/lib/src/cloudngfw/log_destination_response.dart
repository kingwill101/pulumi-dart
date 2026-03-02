// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_response.dart';
import 'monitor_log_response.dart';
import 'storage_account_response.dart';

/// Log Destination
class LogDestinationResponse {
  /// Event Hub configurations
  final pulumi.Input<EventHubResponse>? eventHubConfigurations;
  /// Monitor Log configurations
  final pulumi.Input<MonitorLogResponse>? monitorConfigurations;
  /// Storage account configurations
  final pulumi.Input<StorageAccountResponse>? storageConfigurations;

  /// Creates a new [LogDestinationResponse].
  /// [eventHubConfigurations] Event Hub configurations
  /// [monitorConfigurations] Monitor Log configurations
  /// [storageConfigurations] Storage account configurations
  LogDestinationResponse({
    this.eventHubConfigurations,
    this.monitorConfigurations,
    this.storageConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubConfigurations': ?pulumi.Input.mapOptionalInputValue<EventHubResponse, Map<String, dynamic>>(eventHubConfigurations, (value) => value.toMap()),
      'monitorConfigurations': ?pulumi.Input.mapOptionalInputValue<MonitorLogResponse, Map<String, dynamic>>(monitorConfigurations, (value) => value.toMap()),
      'storageConfigurations': ?pulumi.Input.mapOptionalInputValue<StorageAccountResponse, Map<String, dynamic>>(storageConfigurations, (value) => value.toMap()),
    };
  }

  factory LogDestinationResponse.fromMap(Map<String, dynamic> map) {
    return LogDestinationResponse(
      eventHubConfigurations: map['eventHubConfigurations'] == null ? null : (EventHubResponse.fromMap((map['eventHubConfigurations'] as Map).cast<String, dynamic>())).input(),
      monitorConfigurations: map['monitorConfigurations'] == null ? null : (MonitorLogResponse.fromMap((map['monitorConfigurations'] as Map).cast<String, dynamic>())).input(),
      storageConfigurations: map['storageConfigurations'] == null ? null : (StorageAccountResponse.fromMap((map['storageConfigurations'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

