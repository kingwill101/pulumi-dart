// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_auto_tune_option_maintenance_schedule.dart';

class GetDomainAutoTuneOption {
  /// Auto-Tune desired state for the domain.
  final pulumi.Input<String> desiredState;
  /// A list of the nested configurations for the Auto-Tune maintenance windows of the domain.
  final pulumi.Input<List<GetDomainAutoTuneOptionMaintenanceSchedule>> maintenanceSchedules;
  /// Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune.
  final pulumi.Input<String> rollbackOnDisable;
  /// Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window.
  final pulumi.Input<bool> useOffPeakWindow;

  /// Creates a new [GetDomainAutoTuneOption].
  /// [desiredState] Auto-Tune desired state for the domain.
  /// [maintenanceSchedules] A list of the nested configurations for the Auto-Tune maintenance windows of the domain.
  /// [rollbackOnDisable] Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune.
  /// [useOffPeakWindow] Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window.
  GetDomainAutoTuneOption({
    required this.desiredState,
    required this.maintenanceSchedules,
    required this.rollbackOnDisable,
    required this.useOffPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': desiredState,
      'maintenanceSchedules': pulumi.Input.mapInputValue<List<GetDomainAutoTuneOptionMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<GetDomainAutoTuneOptionMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollbackOnDisable': rollbackOnDisable,
      'useOffPeakWindow': useOffPeakWindow,
    };
  }

  factory GetDomainAutoTuneOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAutoTuneOption(
      desiredState: (map['desiredState'] as String).input(),
      maintenanceSchedules: (pulumi.Input.decodeList<GetDomainAutoTuneOptionMaintenanceSchedule>(map['maintenanceSchedules']!, (value) => GetDomainAutoTuneOptionMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rollbackOnDisable: (map['rollbackOnDisable'] as String).input(),
      useOffPeakWindow: (map['useOffPeakWindow'] as bool).input(),
    );
  }
}

