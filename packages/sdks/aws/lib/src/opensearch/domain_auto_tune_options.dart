// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_auto_tune_options_maintenance_schedule.dart';

class DomainAutoTuneOptions {
  /// Auto-Tune desired state for the domain. Valid values: `ENABLED` or `DISABLED`.
  final pulumi.Input<String> desiredState;
  /// Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
  ///
  /// **NOTE:** Maintenance windows are deprecated and have been replaced with [off-peak windows](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/off-peak.html). Consequently, `maintenance_schedule` configuration blocks cannot be specified when `use_off_peak_window` is set to `true`.
  final pulumi.Input<List<DomainAutoTuneOptionsMaintenanceSchedule>>? maintenanceSchedules;
  /// Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: `DEFAULT_ROLLBACK` or `NO_ROLLBACK`.
  final pulumi.Input<String>? rollbackOnDisable;
  /// Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window. Defaults to `false`.
  final pulumi.Input<bool>? useOffPeakWindow;

  /// Creates a new [DomainAutoTuneOptions].
  /// [desiredState] Auto-Tune desired state for the domain. Valid values: `ENABLED` or `DISABLED`.
  /// [maintenanceSchedules] Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
  /// [rollbackOnDisable] Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: `DEFAULT_ROLLBACK` or `NO_ROLLBACK`.
  /// [useOffPeakWindow] Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window. Defaults to `false`.
  DomainAutoTuneOptions({
    required this.desiredState,
    this.maintenanceSchedules,
    this.rollbackOnDisable,
    this.useOffPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': desiredState,
      'maintenanceSchedules': ?pulumi.Input.mapOptionalInputValue<List<DomainAutoTuneOptionsMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<DomainAutoTuneOptionsMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollbackOnDisable': ?rollbackOnDisable,
      'useOffPeakWindow': ?useOffPeakWindow,
    };
  }

  factory DomainAutoTuneOptions.fromMap(Map<String, dynamic> map) {
    return DomainAutoTuneOptions(
      desiredState: (map['desiredState'] as String).input(),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : ((pulumi.Input.decodeList<DomainAutoTuneOptionsMaintenanceSchedule>(map['maintenanceSchedules']!, (value) => DomainAutoTuneOptionsMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      rollbackOnDisable: map['rollbackOnDisable'] == null ? null : ((map['rollbackOnDisable'] as String).input()).input(),
      useOffPeakWindow: map['useOffPeakWindow'] == null ? null : ((map['useOffPeakWindow'] as bool).input()).input(),
    );
  }
}

