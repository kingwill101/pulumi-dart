// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_specific_reservation_instance_properties_guest_accelerator.dart';
import 'reservation_specific_reservation_instance_properties_local_ssd.dart';

class ReservationSpecificReservationInstanceProperties {
  /// Guest accelerator type and count.
  /// Structure is documented below.
  final List<ReservationSpecificReservationInstancePropertiesGuestAccelerator>?
      guestAccelerators;

  /// The amount of local ssd to reserve with each instance. This
  /// reserves disks of type `local-ssd`.
  /// Structure is documented below.
  final List<ReservationSpecificReservationInstancePropertiesLocalSsd>?
      localSsds;

  /// (Output)
  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// The name of the machine type to reserve.
  final String machineType;

  /// Specifies the frequency of planned maintenance events.
  /// Possible values are: `AS_NEEDED`, `PERIODIC`, `RECURRENT`.
  final String? maintenanceInterval;

  /// The minimum CPU platform for the reservation. For example,
  /// `"Intel Skylake"`. See
  /// the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
  /// for information on available CPU platforms.
  final String? minCpuPlatform;

  /// Creates a new [ReservationSpecificReservationInstanceProperties].
  /// [guestAccelerators] Guest accelerator type and count.
  /// [localSsds] The amount of local ssd to reserve with each instance. This
  /// [locationHint] (Output)
  /// [machineType] The name of the machine type to reserve.
  /// [maintenanceInterval] Specifies the frequency of planned maintenance events.
  /// [minCpuPlatform] The minimum CPU platform for the reservation. For example,
  ReservationSpecificReservationInstanceProperties({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    required this.machineType,
    this.maintenanceInterval,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.encodeList<
              ReservationSpecificReservationInstancePropertiesGuestAccelerator,
              Map<String, dynamic>>(
          guestAcceleratorsValue, (value) => value.toMap());
    }
    final localSsdsValue = localSsds;
    if (localSsdsValue != null) {
      map['localSsds'] = pulumi.Input.encodeList<
          ReservationSpecificReservationInstancePropertiesLocalSsd,
          Map<String, dynamic>>(localSsdsValue, (value) => value.toMap());
    }
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    map['machineType'] = machineType;
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

  factory ReservationSpecificReservationInstanceProperties.fromMap(
      Map<String, dynamic> map) {
    return ReservationSpecificReservationInstanceProperties(
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<
                  ReservationSpecificReservationInstancePropertiesGuestAccelerator>(
              map['guestAccelerators'],
              (value) =>
                  ReservationSpecificReservationInstancePropertiesGuestAccelerator
                      .fromMap((value as Map).cast<String, dynamic>())),
      localSsds: map['localSsds'] == null
          ? null
          : pulumi.Input.decodeList<
                  ReservationSpecificReservationInstancePropertiesLocalSsd>(
              map['localSsds'],
              (value) =>
                  ReservationSpecificReservationInstancePropertiesLocalSsd
                      .fromMap((value as Map).cast<String, dynamic>())),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      machineType: map['machineType'] as String,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : map['maintenanceInterval'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
    );
  }
}
