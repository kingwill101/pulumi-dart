// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties_instance_properties_guest_accelerator/future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties_instance_properties_guest_accelerator.dart';
import '../future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties_instance_properties_local_ssd/future_reservation_status_last_known_good_state_future_reservation_specs_specific_sku_properties_instance_properties_local_ssd.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties {
  /// Specifies accelerator type and count.
  /// Structure is documented below.
  final List<
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator>?
      guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// Structure is documented below.
  final List<
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd>?
      localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String? machineType;

  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final int? maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// Possible values are: `PERIODIC`.
  final String? maintenanceInterval;

  /// Minimum cpu platform the reservation.
  final String? minCpuPlatform;

  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    this.machineType,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.encodeList<
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator,
          Map<String,
              dynamic>>(guestAcceleratorsValue, (value) => value.toMap());
    }
    final localSsdsValue = localSsds;
    if (localSsdsValue != null) {
      map['localSsds'] = pulumi.Input.encodeList<
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd,
          Map<String, dynamic>>(localSsdsValue, (value) => value.toMap());
    }
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final maintenanceFreezeDurationHoursValue = maintenanceFreezeDurationHours;
    if (maintenanceFreezeDurationHoursValue != null) {
      map['maintenanceFreezeDurationHours'] =
          maintenanceFreezeDurationHoursValue;
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = maintenanceIntervalValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    return map;
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstanceProperties(
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<
                  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator>(
              map['guestAccelerators'],
              (value) =>
                  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesGuestAccelerator
                      .fromMap((value as Map).cast<String, dynamic>())),
      localSsds: map['localSsds'] == null
          ? null
          : pulumi.Input.decodeList<
                  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd>(
              map['localSsds'],
              (value) =>
                  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsSpecificSkuPropertiesInstancePropertiesLocalSsd
                      .fromMap((value as Map).cast<String, dynamic>())),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] == null
              ? null
              : map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : map['maintenanceInterval'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
    );
  }
}
