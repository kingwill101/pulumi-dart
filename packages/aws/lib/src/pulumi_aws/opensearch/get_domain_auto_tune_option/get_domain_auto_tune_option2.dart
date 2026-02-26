// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_auto_tune_option_maintenance_schedule/get_domain_auto_tune_option_maintenance_schedule2.dart';

class GetDomainAutoTuneOption2 {
  /// Auto-Tune desired state for the domain.
  final String desiredState;

  /// A list of the nested configurations for the Auto-Tune maintenance windows of the domain.
  final List<GetDomainAutoTuneOptionMaintenanceSchedule2> maintenanceSchedules;

  /// Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune.
  final String rollbackOnDisable;

  /// Whether to schedule Auto-Tune optimizations that require blue/green deployments during the domain's configured daily off-peak window.
  final bool useOffPeakWindow;

  GetDomainAutoTuneOption2({
    required this.desiredState,
    required this.maintenanceSchedules,
    required this.rollbackOnDisable,
    required this.useOffPeakWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['desiredState'] = desiredState;
    map['maintenanceSchedules'] = Input.encodeList<
        GetDomainAutoTuneOptionMaintenanceSchedule2,
        Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap());
    map['rollbackOnDisable'] = rollbackOnDisable;
    map['useOffPeakWindow'] = useOffPeakWindow;
    return map;
  }

  factory GetDomainAutoTuneOption2.fromMap(Map<String, dynamic> map) {
    return GetDomainAutoTuneOption2(
      desiredState: map['desiredState'] as String,
      maintenanceSchedules:
          Input.decodeList<GetDomainAutoTuneOptionMaintenanceSchedule2>(
              map['maintenanceSchedules'],
              (value) => GetDomainAutoTuneOptionMaintenanceSchedule2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rollbackOnDisable: map['rollbackOnDisable'] as String,
      useOffPeakWindow: map['useOffPeakWindow'] as bool,
    );
  }
}
