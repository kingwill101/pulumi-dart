// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../reservation_resource_status_reservation_maintenance_upcoming_group_maintenance/reservation_resource_status_reservation_maintenance_upcoming_group_maintenance.dart';

class ReservationResourceStatusReservationMaintenance {
  /// (Output)
  /// Describes number of instances that have ongoing maintenance.
  final int? instanceMaintenanceOngoingCount;

  /// (Output)
  /// Describes number of instances that have pending maintenance.
  final int? instanceMaintenancePendingCount;

  /// (Output)
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have ongoing maintenance.
  final int? maintenanceOngoingCount;

  /// (Output)
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have pending maintenance.
  final int? maintenancePendingCount;

  /// (Output)
  /// The type of maintenance for the reservation.
  final String? schedulingType;

  /// (Output)
  /// Describes number of subblock Infrastructure that has ongoing maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family(e.g. NVLink Domains). Not all VM Families will support this field.
  final int? subblockInfraMaintenanceOngoingCount;

  /// (Output)
  /// Describes number of subblock Infrastructure that has pending maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family (e.g. NVLink Domains). Not all VM Families will support this field.
  final int? subblockInfraMaintenancePendingCount;

  /// (Output)
  /// Maintenance information on this group of VMs.
  /// Structure is documented below.
  final List<
          ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>?
      upcomingGroupMaintenances;

  ReservationResourceStatusReservationMaintenance({
    this.instanceMaintenanceOngoingCount,
    this.instanceMaintenancePendingCount,
    this.maintenanceOngoingCount,
    this.maintenancePendingCount,
    this.schedulingType,
    this.subblockInfraMaintenanceOngoingCount,
    this.subblockInfraMaintenancePendingCount,
    this.upcomingGroupMaintenances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceMaintenanceOngoingCountValue =
        instanceMaintenanceOngoingCount;
    if (instanceMaintenanceOngoingCountValue != null) {
      map['instanceMaintenanceOngoingCount'] =
          instanceMaintenanceOngoingCountValue;
    }
    final instanceMaintenancePendingCountValue =
        instanceMaintenancePendingCount;
    if (instanceMaintenancePendingCountValue != null) {
      map['instanceMaintenancePendingCount'] =
          instanceMaintenancePendingCountValue;
    }
    final maintenanceOngoingCountValue = maintenanceOngoingCount;
    if (maintenanceOngoingCountValue != null) {
      map['maintenanceOngoingCount'] = maintenanceOngoingCountValue;
    }
    final maintenancePendingCountValue = maintenancePendingCount;
    if (maintenancePendingCountValue != null) {
      map['maintenancePendingCount'] = maintenancePendingCountValue;
    }
    final schedulingTypeValue = schedulingType;
    if (schedulingTypeValue != null) {
      map['schedulingType'] = schedulingTypeValue;
    }
    final subblockInfraMaintenanceOngoingCountValue =
        subblockInfraMaintenanceOngoingCount;
    if (subblockInfraMaintenanceOngoingCountValue != null) {
      map['subblockInfraMaintenanceOngoingCount'] =
          subblockInfraMaintenanceOngoingCountValue;
    }
    final subblockInfraMaintenancePendingCountValue =
        subblockInfraMaintenancePendingCount;
    if (subblockInfraMaintenancePendingCountValue != null) {
      map['subblockInfraMaintenancePendingCount'] =
          subblockInfraMaintenancePendingCountValue;
    }
    final upcomingGroupMaintenancesValue = upcomingGroupMaintenances;
    if (upcomingGroupMaintenancesValue != null) {
      map['upcomingGroupMaintenances'] = Input.encodeList<
          ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance,
          Map<String,
              dynamic>>(upcomingGroupMaintenancesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ReservationResourceStatusReservationMaintenance.fromMap(
      Map<String, dynamic> map) {
    return ReservationResourceStatusReservationMaintenance(
      instanceMaintenanceOngoingCount:
          map['instanceMaintenanceOngoingCount'] == null
              ? null
              : map['instanceMaintenanceOngoingCount'] as int,
      instanceMaintenancePendingCount:
          map['instanceMaintenancePendingCount'] == null
              ? null
              : map['instanceMaintenancePendingCount'] as int,
      maintenanceOngoingCount: map['maintenanceOngoingCount'] == null
          ? null
          : map['maintenanceOngoingCount'] as int,
      maintenancePendingCount: map['maintenancePendingCount'] == null
          ? null
          : map['maintenancePendingCount'] as int,
      schedulingType: map['schedulingType'] == null
          ? null
          : map['schedulingType'] as String,
      subblockInfraMaintenanceOngoingCount:
          map['subblockInfraMaintenanceOngoingCount'] == null
              ? null
              : map['subblockInfraMaintenanceOngoingCount'] as int,
      subblockInfraMaintenancePendingCount:
          map['subblockInfraMaintenancePendingCount'] == null
              ? null
              : map['subblockInfraMaintenancePendingCount'] as int,
      upcomingGroupMaintenances: map['upcomingGroupMaintenances'] == null
          ? null
          : Input.decodeList<
                  ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>(
              map['upcomingGroupMaintenances'],
              (value) =>
                  ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
