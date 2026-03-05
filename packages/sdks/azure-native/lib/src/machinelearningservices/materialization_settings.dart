// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'materialization_compute_resource.dart';
import 'notification_setting.dart';
import 'recurrence_trigger.dart';

class MaterializationSettings {
  /// Specifies the notification details
  final pulumi.Input<NotificationSetting>? notification;
  /// Specifies the compute resource settings
  final pulumi.Input<MaterializationComputeResource>? resource;
  /// Specifies the schedule details
  final pulumi.Input<RecurrenceTrigger>? schedule;
  /// Specifies the spark compute settings
  final pulumi.Input<Map<String, String>>? sparkConfiguration;
  /// Specifies the stores to which materialization should happen
  final pulumi.Input<String>? storeType;

  /// Creates a new [MaterializationSettings].
  /// [notification] Specifies the notification details
  /// [resource] Specifies the compute resource settings
  /// [schedule] Specifies the schedule details
  /// [sparkConfiguration] Specifies the spark compute settings
  /// [storeType] Specifies the stores to which materialization should happen
  MaterializationSettings({
    this.notification,
    this.resource,
    this.schedule,
    this.sparkConfiguration,
    this.storeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notification': ?pulumi.Input.mapOptionalInputValue<NotificationSetting, Map<String, dynamic>>(notification, (value) => value.toMap()),
      'resource': ?pulumi.Input.mapOptionalInputValue<MaterializationComputeResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<RecurrenceTrigger, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sparkConfiguration': ?sparkConfiguration,
      'storeType': ?storeType,
    };
  }

  factory MaterializationSettings.fromMap(Map<String, dynamic> map) {
    return MaterializationSettings(
      notification: (() { final guardedValue = map['notification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaterializationComputeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurrenceTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkConfiguration: (() { final guardedValue = map['sparkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storeType: (() { final guardedValue = map['storeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

