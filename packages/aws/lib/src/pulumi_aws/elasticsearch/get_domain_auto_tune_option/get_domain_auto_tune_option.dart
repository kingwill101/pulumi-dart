// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_domain_auto_tune_option_maintenance_schedule/get_domain_auto_tune_option_maintenance_schedule.dart';

class GetDomainAutoTuneOption {
  /// The Auto-Tune desired state for the domain.
  final String desiredState;

  /// A list of the nested configurations for the Auto-Tune maintenance windows of the domain.
  final List<GetDomainAutoTuneOptionMaintenanceSchedule> maintenanceSchedules;

  /// Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune.
  final String rollbackOnDisable;

  GetDomainAutoTuneOption({
    required this.desiredState,
    required this.maintenanceSchedules,
    required this.rollbackOnDisable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['desiredState'] = desiredState;
    map['maintenanceSchedules'] = Input.encodeList<
        GetDomainAutoTuneOptionMaintenanceSchedule,
        Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap());
    map['rollbackOnDisable'] = rollbackOnDisable;
    return map;
  }

  factory GetDomainAutoTuneOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAutoTuneOption(
      desiredState: map['desiredState'] as String,
      maintenanceSchedules:
          Input.decodeList<GetDomainAutoTuneOptionMaintenanceSchedule>(
              map['maintenanceSchedules'],
              (value) => GetDomainAutoTuneOptionMaintenanceSchedule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rollbackOnDisable: map['rollbackOnDisable'] as String,
    );
  }
}
