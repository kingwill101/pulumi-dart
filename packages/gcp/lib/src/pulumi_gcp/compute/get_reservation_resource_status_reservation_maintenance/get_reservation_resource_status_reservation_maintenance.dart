// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_reservation_resource_status_reservation_maintenance_upcoming_group_maintenance/get_reservation_resource_status_reservation_maintenance_upcoming_group_maintenance.dart';

class GetReservationResourceStatusReservationMaintenance {
  /// Describes number of instances that have ongoing maintenance.
  final int instanceMaintenanceOngoingCount;

  /// Describes number of instances that have pending maintenance.
  final int instanceMaintenancePendingCount;

  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have ongoing maintenance.
  final int maintenanceOngoingCount;

  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have pending maintenance.
  final int maintenancePendingCount;

  /// The type of maintenance for the reservation.
  final String schedulingType;

  /// Describes number of subblock Infrastructure that has ongoing maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family(e.g. NVLink Domains). Not all VM Families will support this field.
  final int subblockInfraMaintenanceOngoingCount;

  /// Describes number of subblock Infrastructure that has pending maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family (e.g. NVLink Domains). Not all VM Families will support this field.
  final int subblockInfraMaintenancePendingCount;

  /// Maintenance information on this group of VMs.
  final List<
          GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>
      upcomingGroupMaintenances;

  GetReservationResourceStatusReservationMaintenance({
    required this.instanceMaintenanceOngoingCount,
    required this.instanceMaintenancePendingCount,
    required this.maintenanceOngoingCount,
    required this.maintenancePendingCount,
    required this.schedulingType,
    required this.subblockInfraMaintenanceOngoingCount,
    required this.subblockInfraMaintenancePendingCount,
    required this.upcomingGroupMaintenances,
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
    map['upcomingGroupMaintenances'] = Input.encodeList<
        GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance,
        Map<String,
            dynamic>>(upcomingGroupMaintenances, (value) => value.toMap());
    return map;
  }

  factory GetReservationResourceStatusReservationMaintenance.fromMap(
      Map<String, dynamic> map) {
    return GetReservationResourceStatusReservationMaintenance(
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
      upcomingGroupMaintenances: Input.decodeList<
              GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>(
          map['upcomingGroupMaintenances'],
          (value) =>
              GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
