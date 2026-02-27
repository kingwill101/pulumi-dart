// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_auto_tune_options_maintenance_schedule/domain_auto_tune_options_maintenance_schedule2.dart';

class DomainAutoTuneOptions2 {
  /// Auto-Tune desired state for the domain. Valid values: `ENABLED` or `DISABLED`.
  final String desiredState;

  /// Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
  ///
  /// **NOTE:** Maintenance windows are deprecated and have been replaced with [off-peak windows](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html). Consequently, `maintenance_schedule` configuration blocks cannot be specified when `use_off_peak_window` is set to `true`.
  final List<DomainAutoTuneOptionsMaintenanceSchedule2>? maintenanceSchedules;

  /// Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: `DEFAULT_ROLLBACK` or `NO_ROLLBACK`.
  final String? rollbackOnDisable;

  /// Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window. Defaults to `false`.
  final bool? useOffPeakWindow;

  DomainAutoTuneOptions2({
    required this.desiredState,
    this.maintenanceSchedules,
    this.rollbackOnDisable,
    this.useOffPeakWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['desiredState'] = desiredState;
    final maintenanceSchedulesValue = maintenanceSchedules;
    if (maintenanceSchedulesValue != null) {
      map['maintenanceSchedules'] = Input.encodeList<
              DomainAutoTuneOptionsMaintenanceSchedule2, Map<String, dynamic>>(
          maintenanceSchedulesValue, (value) => value.toMap());
    }
    final rollbackOnDisableValue = rollbackOnDisable;
    if (rollbackOnDisableValue != null) {
      map['rollbackOnDisable'] = rollbackOnDisableValue;
    }
    final useOffPeakWindowValue = useOffPeakWindow;
    if (useOffPeakWindowValue != null) {
      map['useOffPeakWindow'] = useOffPeakWindowValue;
    }
    return map;
  }

  factory DomainAutoTuneOptions2.fromMap(Map<String, dynamic> map) {
    return DomainAutoTuneOptions2(
      desiredState: map['desiredState'] as String,
      maintenanceSchedules: map['maintenanceSchedules'] == null
          ? null
          : Input.decodeList<DomainAutoTuneOptionsMaintenanceSchedule2>(
              map['maintenanceSchedules'],
              (value) => DomainAutoTuneOptionsMaintenanceSchedule2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rollbackOnDisable: map['rollbackOnDisable'] == null
          ? null
          : map['rollbackOnDisable'] as String,
      useOffPeakWindow: map['useOffPeakWindow'] == null
          ? null
          : map['useOffPeakWindow'] as bool,
    );
  }
}
