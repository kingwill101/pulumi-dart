// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'materialization_compute_resource_response.dart';
import 'notification_setting_response.dart';
import 'recurrence_trigger_response.dart';

class MaterializationSettingsResponse {
  /// Specifies the notification details
  final pulumi.Input<NotificationSettingResponse>? notification;
  /// Specifies the compute resource settings
  final pulumi.Input<MaterializationComputeResourceResponse>? resource;
  /// Specifies the schedule details
  final pulumi.Input<RecurrenceTriggerResponse>? schedule;
  /// Specifies the spark compute settings
  final pulumi.Input<Map<String, String>>? sparkConfiguration;
  /// Specifies the stores to which materialization should happen
  final pulumi.Input<String>? storeType;

  /// Creates a new [MaterializationSettingsResponse].
  /// [notification] Specifies the notification details
  /// [resource] Specifies the compute resource settings
  /// [schedule] Specifies the schedule details
  /// [sparkConfiguration] Specifies the spark compute settings
  /// [storeType] Specifies the stores to which materialization should happen
  const MaterializationSettingsResponse({
    this.notification,
    this.resource,
    this.schedule,
    this.sparkConfiguration,
    this.storeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notification': ?pulumi.Input.mapOptionalInputValue<NotificationSettingResponse, Map<String, dynamic>>(notification, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<MaterializationComputeResourceResponse, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<RecurrenceTriggerResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sparkConfiguration': ?sparkConfiguration,
      'storeType': ?storeType,
    };
  }

  factory MaterializationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MaterializationSettingsResponse(
      notification: (() { final guardedValue = map['notification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaterializationComputeResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurrenceTriggerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkConfiguration: (() { final guardedValue = map['sparkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storeType: (() { final guardedValue = map['storeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

