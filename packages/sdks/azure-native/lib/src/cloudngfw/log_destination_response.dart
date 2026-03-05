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
      eventHubConfigurations: (() { final guardedValue = map['eventHubConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventHubResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorConfigurations: (() { final guardedValue = map['monitorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorLogResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageConfigurations: (() { final guardedValue = map['storageConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

