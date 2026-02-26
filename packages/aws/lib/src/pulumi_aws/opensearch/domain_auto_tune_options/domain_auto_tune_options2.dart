// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_auto_tune_options_maintenance_schedule/domain_auto_tune_options_maintenance_schedule2.dart';

class DomainAutoTuneOptions2 {
  /// Auto-Tune desired state for the domain. Valid values: `ENABLED` or `DISABLED`.
  final String desiredState;

  /// Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
  ///
  /// **NOTE:** Maintenance windows are deprecated and have been replaced with [off-peak windows](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html). Consequently, <span pulumi-lang-nodejs="`maintenanceSchedule`" pulumi-lang-dotnet="`MaintenanceSchedule`" pulumi-lang-go="`maintenanceSchedule`" pulumi-lang-python="`maintenance_schedule`" pulumi-lang-yaml="`maintenanceSchedule`" pulumi-lang-java="`maintenanceSchedule`">`maintenance_schedule`</span> configuration blocks cannot be specified when <span pulumi-lang-nodejs="`useOffPeakWindow`" pulumi-lang-dotnet="`UseOffPeakWindow`" pulumi-lang-go="`useOffPeakWindow`" pulumi-lang-python="`use_off_peak_window`" pulumi-lang-yaml="`useOffPeakWindow`" pulumi-lang-java="`useOffPeakWindow`">`use_off_peak_window`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final List<DomainAutoTuneOptionsMaintenanceSchedule2>? maintenanceSchedules;

  /// Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: `DEFAULT_ROLLBACK` or `NO_ROLLBACK`.
  final String? rollbackOnDisable;

  /// Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
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
