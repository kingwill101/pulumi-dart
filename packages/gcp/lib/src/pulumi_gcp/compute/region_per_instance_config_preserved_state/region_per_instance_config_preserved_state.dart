// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_per_instance_config_preserved_state_disk/region_per_instance_config_preserved_state_disk.dart';
import '../region_per_instance_config_preserved_state_external_ip/region_per_instance_config_preserved_state_external_ip.dart';
import '../region_per_instance_config_preserved_state_internal_ip/region_per_instance_config_preserved_state_internal_ip.dart';

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

  RegionPerInstanceConfigPreservedState({
    this.disks,
    this.externalIps,
    this.internalIps,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.encodeList<RegionPerInstanceConfigPreservedStateDisk,
          Map<String, dynamic>>(disksValue, (value) => value.toMap());
    }
    final externalIpsValue = externalIps;
    if (externalIpsValue != null) {
      map['externalIps'] = Input.encodeList<
          RegionPerInstanceConfigPreservedStateExternalIp,
          Map<String, dynamic>>(externalIpsValue, (value) => value.toMap());
    }
    final internalIpsValue = internalIps;
    if (internalIpsValue != null) {
      map['internalIps'] = Input.encodeList<
          RegionPerInstanceConfigPreservedStateInternalIp,
          Map<String, dynamic>>(internalIpsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    return map;
  }

  factory RegionPerInstanceConfigPreservedState.fromMap(
      Map<String, dynamic> map) {
    return RegionPerInstanceConfigPreservedState(
      disks: map['disks'] == null
          ? null
          : Input.decodeList<RegionPerInstanceConfigPreservedStateDisk>(
              map['disks'],
              (value) => RegionPerInstanceConfigPreservedStateDisk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      externalIps: map['externalIps'] == null
          ? null
          : Input.decodeList<RegionPerInstanceConfigPreservedStateExternalIp>(
              map['externalIps'],
              (value) =>
                  RegionPerInstanceConfigPreservedStateExternalIp.fromMap(
                      (value as Map).cast<String, dynamic>())),
      internalIps: map['internalIps'] == null
          ? null
          : Input.decodeList<RegionPerInstanceConfigPreservedStateInternalIp>(
              map['internalIps'],
              (value) =>
                  RegionPerInstanceConfigPreservedStateInternalIp.fromMap(
                      (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}
