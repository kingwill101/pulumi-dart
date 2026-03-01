// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_specific_sku_properties_instance_properties_guest_accelerator.dart';
import 'future_reservation_specific_sku_properties_instance_properties_local_ssd.dart';

class FutureReservationSpecificSkuPropertiesInstanceProperties {
  /// Specifies accelerator type and count.
  /// Structure is documented below.
  final List<
    FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator
  >?
  guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// Structure is documented below.
  final List<FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd>?
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

  /// Creates a new [FutureReservationSpecificSkuPropertiesInstanceProperties].
  /// [guestAccelerators] Specifies accelerator type and count.
  /// [localSsds] Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  /// [locationHint] An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  /// [machineType] Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  /// [maintenanceFreezeDurationHours] Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events. The accepted values are: PERIODIC
  /// [minCpuPlatform] Minimum cpu platform the reservation.
  FutureReservationSpecificSkuPropertiesInstanceProperties({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    this.machineType,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestAccelerators': ?guestAccelerators == null
          ? null
          : pulumi.Input.encodeList<
              FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator,
              Map<String, dynamic>
            >(guestAccelerators!, (value) => value.toMap()),
      'localSsds': ?localSsds == null
          ? null
          : pulumi.Input.encodeList<
              FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd,
              Map<String, dynamic>
            >(localSsds!, (value) => value.toMap()),
      'locationHint': ?locationHint,
      'machineType': ?machineType,
      'maintenanceFreezeDurationHours': ?maintenanceFreezeDurationHours,
      'maintenanceInterval': ?maintenanceInterval,
      'minCpuPlatform': ?minCpuPlatform,
    };
  }

  factory FutureReservationSpecificSkuPropertiesInstanceProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationSpecificSkuPropertiesInstanceProperties(
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<
              FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator
            >(
              map['guestAccelerators'],
              (value) =>
                  FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      localSsds: map['localSsds'] == null
          ? null
          : pulumi.Input.decodeList<
              FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd
            >(
              map['localSsds'],
              (value) =>
                  FutureReservationSpecificSkuPropertiesInstancePropertiesLocalSsd.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      locationHint: map['locationHint'] == null
          ? null
          : map['locationHint'] as String,
      machineType: map['machineType'] == null
          ? null
          : map['machineType'] as String,
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
