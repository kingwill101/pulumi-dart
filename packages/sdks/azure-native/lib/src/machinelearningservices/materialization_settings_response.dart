// ignore_for_file: unused_element, unnecessary_cast

import 'materialization_compute_resource_response.dart';
import 'notification_setting_response.dart';
import 'recurrence_trigger_response.dart';

class MaterializationSettingsResponse {
  /// Specifies the notification details
  final NotificationSettingResponse? notification;
  /// Specifies the compute resource settings
  final MaterializationComputeResourceResponse? resource;
  /// Specifies the schedule details
  final RecurrenceTriggerResponse? schedule;
  /// Specifies the spark compute settings
  final Map<String, String>? sparkConfiguration;
  /// Specifies the stores to which materialization should happen
  final String? storeType;

  /// Creates a new [MaterializationSettingsResponse].
  /// [notification] Specifies the notification details
  /// [resource] Specifies the compute resource settings
  /// [schedule] Specifies the schedule details
  /// [sparkConfiguration] Specifies the spark compute settings
  /// [storeType] Specifies the stores to which materialization should happen
  MaterializationSettingsResponse({
    this.notification,
    this.resource,
    this.schedule,
    this.sparkConfiguration,
    this.storeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notification': ?notification == null ? null : notification!.toMap(),
      'resource': ?resource == null ? null : resource!.toMap(),
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'sparkConfiguration': ?sparkConfiguration,
      'storeType': ?storeType,
    };
  }

  factory MaterializationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MaterializationSettingsResponse(
      notification: map['notification'] == null ? null : NotificationSettingResponse.fromMap((map['notification'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : MaterializationComputeResourceResponse.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null ? null : RecurrenceTriggerResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      sparkConfiguration: map['sparkConfiguration'] == null ? null : (map['sparkConfiguration'] as Map).cast<String, String>(),
      storeType: map['storeType'] == null ? null : map['storeType'] as String,
    );
  }
}

