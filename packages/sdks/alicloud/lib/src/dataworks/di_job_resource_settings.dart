// ignore_for_file: unused_element, unnecessary_cast

import 'di_job_resource_settings_offline_resource_settings.dart';
import 'di_job_resource_settings_realtime_resource_settings.dart';
import 'di_job_resource_settings_schedule_resource_settings.dart';

class DiJobResourceSettings {
  /// Offline Resource Group configuration See `offline_resource_settings` below.
  final DiJobResourceSettingsOfflineResourceSettings? offlineResourceSettings;
  /// Real-time Resource Group See `realtime_resource_settings` below.
  final DiJobResourceSettingsRealtimeResourceSettings? realtimeResourceSettings;
  /// Scheduling Resource Groups See `schedule_resource_settings` below.
  final DiJobResourceSettingsScheduleResourceSettings? scheduleResourceSettings;

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
      'offlineResourceSettings': ?offlineResourceSettings == null ? null : offlineResourceSettings!.toMap(),
      'realtimeResourceSettings': ?realtimeResourceSettings == null ? null : realtimeResourceSettings!.toMap(),
      'scheduleResourceSettings': ?scheduleResourceSettings == null ? null : scheduleResourceSettings!.toMap(),
    };
  }

  factory DiJobResourceSettings.fromMap(Map<String, dynamic> map) {
    return DiJobResourceSettings(
      offlineResourceSettings: map['offlineResourceSettings'] == null ? null : DiJobResourceSettingsOfflineResourceSettings.fromMap((map['offlineResourceSettings'] as Map).cast<String, dynamic>()),
      realtimeResourceSettings: map['realtimeResourceSettings'] == null ? null : DiJobResourceSettingsRealtimeResourceSettings.fromMap((map['realtimeResourceSettings'] as Map).cast<String, dynamic>()),
      scheduleResourceSettings: map['scheduleResourceSettings'] == null ? null : DiJobResourceSettingsScheduleResourceSettings.fromMap((map['scheduleResourceSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

