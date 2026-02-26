// ignore_for_file: unused_element, unnecessary_cast

class GetReservationSubBlockReservationSubBlockMaintenance {
  /// Number of instances that have ongoing maintenance.
  final int instanceMaintenanceOngoingCount;

  /// Number of instances that have pending maintenance.
  final int instanceMaintenancePendingCount;

  /// Number of hosts in the sub-block that have ongoing maintenance.
  final int maintenanceOngoingCount;

  /// Number of hosts in the sub-block that have pending maintenance.
  final int maintenancePendingCount;

  /// The type of maintenance for the reservation.
  final String schedulingType;

  /// Number of sub-block infrastructure that has ongoing maintenance.
  final int subblockInfraMaintenanceOngoingCount;

  /// Number of sub-block infrastructure that has pending maintenance.
  final int subblockInfraMaintenancePendingCount;

  GetReservationSubBlockReservationSubBlockMaintenance({
    required this.instanceMaintenanceOngoingCount,
    required this.instanceMaintenancePendingCount,
    required this.maintenanceOngoingCount,
    required this.maintenancePendingCount,
    required this.schedulingType,
    required this.subblockInfraMaintenanceOngoingCount,
    required this.subblockInfraMaintenancePendingCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceMaintenanceOngoingCount'] = instanceMaintenanceOngoingCount;
    map['instanceMaintenancePendingCount'] = instanceMaintenancePendingCount;
    map['maintenanceOngoingCount'] = maintenanceOngoingCount;
    map['maintenancePendingCount'] = maintenancePendingCount;
    map['schedulingType'] = schedulingType;
    map['subblockInfraMaintenanceOngoingCount'] =
        subblockInfraMaintenanceOngoingCount;
    map['subblockInfraMaintenancePendingCount'] =
        subblockInfraMaintenancePendingCount;
    return map;
  }

  factory GetReservationSubBlockReservationSubBlockMaintenance.fromMap(
      Map<String, dynamic> map) {
    return GetReservationSubBlockReservationSubBlockMaintenance(
      instanceMaintenanceOngoingCount:
          map['instanceMaintenanceOngoingCount'] as int,
      instanceMaintenancePendingCount:
          map['instanceMaintenancePendingCount'] as int,
      maintenanceOngoingCount: map['maintenanceOngoingCount'] as int,
      maintenancePendingCount: map['maintenancePendingCount'] as int,
      schedulingType: map['schedulingType'] as String,
      subblockInfraMaintenanceOngoingCount:
          map['subblockInfraMaintenanceOngoingCount'] as int,
      subblockInfraMaintenancePendingCount:
          map['subblockInfraMaintenancePendingCount'] as int,
    );
  }
}
