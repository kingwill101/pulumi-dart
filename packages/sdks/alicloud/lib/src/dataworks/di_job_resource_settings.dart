// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_job_resource_settings_offline_resource_settings.dart';
import 'di_job_resource_settings_realtime_resource_settings.dart';
import 'di_job_resource_settings_schedule_resource_settings.dart';

class DiJobResourceSettings {
  /// Offline Resource Group configuration See `offline_resource_settings` below.
  final pulumi.Input<DiJobResourceSettingsOfflineResourceSettings>?
  offlineResourceSettings;

  /// Real-time Resource Group See `realtime_resource_settings` below.
  final pulumi.Input<DiJobResourceSettingsRealtimeResourceSettings>?
  realtimeResourceSettings;

  /// Scheduling Resource Groups See `schedule_resource_settings` below.
  final pulumi.Input<DiJobResourceSettingsScheduleResourceSettings>?
  scheduleResourceSettings;

  /// Creates a new [DiJobResourceSettings].
  /// [offlineResourceSettings] Offline Resource Group configuration See `offline_resource_settings` below.
  /// [realtimeResourceSettings] Real-time Resource Group See `realtime_resource_settings` below.
  /// [scheduleResourceSettings] Scheduling Resource Groups See `schedule_resource_settings` below.
  DiJobResourceSettings({
    this.offlineResourceSettings,
    this.realtimeResourceSettings,
    this.scheduleResourceSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offlineResourceSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DiJobResourceSettingsOfflineResourceSettings,
            Map<String, dynamic>
          >(offlineResourceSettings, (value) => value.toMap()),
      'realtimeResourceSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DiJobResourceSettingsRealtimeResourceSettings,
            Map<String, dynamic>
          >(realtimeResourceSettings, (value) => value.toMap()),
      'scheduleResourceSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DiJobResourceSettingsScheduleResourceSettings,
            Map<String, dynamic>
          >(scheduleResourceSettings, (value) => value.toMap()),
    };
  }

  factory DiJobResourceSettings.fromMap(Map<String, dynamic> map) {
    return DiJobResourceSettings(
      offlineResourceSettings: (() {
        final guardedValue = map['offlineResourceSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiJobResourceSettingsOfflineResourceSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      realtimeResourceSettings: (() {
        final guardedValue = map['realtimeResourceSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiJobResourceSettingsRealtimeResourceSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scheduleResourceSettings: (() {
        final guardedValue = map['scheduleResourceSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiJobResourceSettingsScheduleResourceSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
