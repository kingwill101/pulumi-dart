// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_auto_tune_options_maintenance_schedule.dart';

class DomainAutoTuneOptions {
  /// The Auto-Tune desired state for the domain. Valid values: `ENABLED` or `DISABLED`.
  final pulumi.Input<String> desiredState;
  /// Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
  final pulumi.Input<List<DomainAutoTuneOptionsMaintenanceSchedule>>? maintenanceSchedules;
  /// Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: `DEFAULT_ROLLBACK` or `NO_ROLLBACK`.
  final pulumi.Input<String>? rollbackOnDisable;

  /// Creates a new [DomainAutoTuneOptions].
  /// [desiredState] The Auto-Tune desired state for the domain. Valid values: `ENABLED` or `DISABLED`.
  /// [maintenanceSchedules] Configuration block for Auto-Tune maintenance windows. Can be specified multiple times for each maintenance window. Detailed below.
  /// [rollbackOnDisable] Whether to roll back to default Auto-Tune settings when disabling Auto-Tune. Valid values: `DEFAULT_ROLLBACK` or `NO_ROLLBACK`.
  DomainAutoTuneOptions({
    required this.desiredState,
    this.maintenanceSchedules,
    this.rollbackOnDisable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': desiredState,
      'maintenanceSchedules': ?pulumi.Input.mapOptionalInputValue<List<DomainAutoTuneOptionsMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<DomainAutoTuneOptionsMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollbackOnDisable': ?rollbackOnDisable,
    };
  }

  factory DomainAutoTuneOptions.fromMap(Map<String, dynamic> map) {
    return DomainAutoTuneOptions(
      desiredState: (map['desiredState'] as String).input(),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : (pulumi.Input.decodeList<DomainAutoTuneOptionsMaintenanceSchedule>(map['maintenanceSchedules'], (value) => DomainAutoTuneOptionsMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rollbackOnDisable: map['rollbackOnDisable'] == null ? null : (map['rollbackOnDisable'] as String).input(),
    );
  }
}

