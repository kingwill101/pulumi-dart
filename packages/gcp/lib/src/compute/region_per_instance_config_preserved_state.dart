// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_per_instance_config_preserved_state_disk.dart';
import 'region_per_instance_config_preserved_state_external_ip.dart';
import 'region_per_instance_config_preserved_state_internal_ip.dart';

class RegionPerInstanceConfigPreservedState {
  /// Stateful disks for the instance.
  /// Structure is documented below.
  final List<RegionPerInstanceConfigPreservedStateDisk>? disks;

  /// Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final List<RegionPerInstanceConfigPreservedStateExternalIp>? externalIps;

  /// Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final List<RegionPerInstanceConfigPreservedStateInternalIp>? internalIps;

  /// Preserved metadata defined for this instance. This is a list of key->value pairs.
  final Map<String, String>? metadata;

  /// Creates a new [RegionPerInstanceConfigPreservedState].
  /// [disks] Stateful disks for the instance.
  /// [externalIps] Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [internalIps] Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [metadata] Preserved metadata defined for this instance. This is a list of key->value pairs.
  RegionPerInstanceConfigPreservedState({
    this.disks,
    this.externalIps,
    this.internalIps,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null
          ? null
          : pulumi.Input.encodeList<
              RegionPerInstanceConfigPreservedStateDisk,
              Map<String, dynamic>
            >(disks!, (value) => value.toMap()),
      'externalIps': ?externalIps == null
          ? null
          : pulumi.Input.encodeList<
              RegionPerInstanceConfigPreservedStateExternalIp,
              Map<String, dynamic>
            >(externalIps!, (value) => value.toMap()),
      'internalIps': ?internalIps == null
          ? null
          : pulumi.Input.encodeList<
              RegionPerInstanceConfigPreservedStateInternalIp,
              Map<String, dynamic>
            >(internalIps!, (value) => value.toMap()),
      'metadata': ?metadata,
    };
  }

  factory RegionPerInstanceConfigPreservedState.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionPerInstanceConfigPreservedState(
      disks: map['disks'] == null
          ? null
          : pulumi.Input.decodeList<RegionPerInstanceConfigPreservedStateDisk>(
              map['disks'],
              (value) => RegionPerInstanceConfigPreservedStateDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      externalIps: map['externalIps'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionPerInstanceConfigPreservedStateExternalIp
            >(
              map['externalIps'],
              (value) =>
                  RegionPerInstanceConfigPreservedStateExternalIp.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      internalIps: map['internalIps'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionPerInstanceConfigPreservedStateInternalIp
            >(
              map['internalIps'],
              (value) =>
                  RegionPerInstanceConfigPreservedStateInternalIp.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}
