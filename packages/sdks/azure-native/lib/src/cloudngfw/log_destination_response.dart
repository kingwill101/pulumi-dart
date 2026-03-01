// ignore_for_file: unused_element, unnecessary_cast

import 'event_hub_response.dart';
import 'monitor_log_response.dart';
import 'storage_account_response.dart';

/// Log Destination
class LogDestinationResponse {
  /// Event Hub configurations
  final EventHubResponse? eventHubConfigurations;
  /// Monitor Log configurations
  final MonitorLogResponse? monitorConfigurations;
  /// Storage account configurations
  final StorageAccountResponse? storageConfigurations;

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
      'eventHubConfigurations': ?eventHubConfigurations == null ? null : eventHubConfigurations!.toMap(),
      'monitorConfigurations': ?monitorConfigurations == null ? null : monitorConfigurations!.toMap(),
      'storageConfigurations': ?storageConfigurations == null ? null : storageConfigurations!.toMap(),
    };
  }

  factory LogDestinationResponse.fromMap(Map<String, dynamic> map) {
    return LogDestinationResponse(
      eventHubConfigurations: map['eventHubConfigurations'] == null ? null : EventHubResponse.fromMap((map['eventHubConfigurations'] as Map).cast<String, dynamic>()),
      monitorConfigurations: map['monitorConfigurations'] == null ? null : MonitorLogResponse.fromMap((map['monitorConfigurations'] as Map).cast<String, dynamic>()),
      storageConfigurations: map['storageConfigurations'] == null ? null : StorageAccountResponse.fromMap((map['storageConfigurations'] as Map).cast<String, dynamic>()),
    );
  }
}

