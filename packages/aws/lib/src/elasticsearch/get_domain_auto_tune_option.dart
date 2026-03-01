// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_auto_tune_option_maintenance_schedule.dart';

class GetDomainAutoTuneOption {
  /// The Auto-Tune desired state for the domain.
  final String desiredState;
  /// A list of the nested configurations for the Auto-Tune maintenance windows of the domain.
  final List<GetDomainAutoTuneOptionMaintenanceSchedule> maintenanceSchedules;
  /// Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune.
  final String rollbackOnDisable;

  /// Creates a new [GetDomainAutoTuneOption].
  /// [desiredState] The Auto-Tune desired state for the domain.
  /// [maintenanceSchedules] A list of the nested configurations for the Auto-Tune maintenance windows of the domain.
  /// [rollbackOnDisable] Whether the domain is set to roll back to default Auto-Tune settings when disabling Auto-Tune.
  GetDomainAutoTuneOption({
    required this.desiredState,
    required this.maintenanceSchedules,
    required this.rollbackOnDisable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': desiredState,
      'maintenanceSchedules': pulumi.Input.encodeList<GetDomainAutoTuneOptionMaintenanceSchedule, Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap()),
      'rollbackOnDisable': rollbackOnDisable,
    };
  }

  factory GetDomainAutoTuneOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAutoTuneOption(
      desiredState: map['desiredState'] as String,
      maintenanceSchedules: pulumi.Input.decodeList<GetDomainAutoTuneOptionMaintenanceSchedule>(map['maintenanceSchedules'], (value) => GetDomainAutoTuneOptionMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())),
      rollbackOnDisable: map['rollbackOnDisable'] as String,
    );
  }
}

