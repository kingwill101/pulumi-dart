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

  /// Creates a new [GetReservationSubBlockReservationSubBlockMaintenance].
  /// [instanceMaintenanceOngoingCount] Number of instances that have ongoing maintenance.
  /// [instanceMaintenancePendingCount] Number of instances that have pending maintenance.
  /// [maintenanceOngoingCount] Number of hosts in the sub-block that have ongoing maintenance.
  /// [maintenancePendingCount] Number of hosts in the sub-block that have pending maintenance.
  /// [schedulingType] The type of maintenance for the reservation.
  /// [subblockInfraMaintenanceOngoingCount] Number of sub-block infrastructure that has ongoing maintenance.
  /// [subblockInfraMaintenancePendingCount] Number of sub-block infrastructure that has pending maintenance.
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
    return <String, dynamic>{
      'instanceMaintenanceOngoingCount': instanceMaintenanceOngoingCount,
      'instanceMaintenancePendingCount': instanceMaintenancePendingCount,
      'maintenanceOngoingCount': maintenanceOngoingCount,
      'maintenancePendingCount': maintenancePendingCount,
      'schedulingType': schedulingType,
      'subblockInfraMaintenanceOngoingCount':
          subblockInfraMaintenanceOngoingCount,
      'subblockInfraMaintenancePendingCount':
          subblockInfraMaintenancePendingCount,
    };
  }

  factory GetReservationSubBlockReservationSubBlockMaintenance.fromMap(
    Map<String, dynamic> map,
  ) {
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
