// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../per_instance_config_preserved_state_disk/per_instance_config_preserved_state_disk.dart';
import '../per_instance_config_preserved_state_external_ip/per_instance_config_preserved_state_external_ip.dart';
import '../per_instance_config_preserved_state_internal_ip/per_instance_config_preserved_state_internal_ip.dart';

class PerInstanceConfigPreservedState {
  /// Stateful disks for the instance.
  /// Structure is documented below.
  final List<PerInstanceConfigPreservedStateDisk>? disks;

  /// Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final List<PerInstanceConfigPreservedStateExternalIp>? externalIps;

  /// Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final List<PerInstanceConfigPreservedStateInternalIp>? internalIps;

  /// Preserved metadata defined for this instance. This is a list of key->value pairs.
  final Map<String, String>? metadata;

  PerInstanceConfigPreservedState({
    this.disks,
    this.externalIps,
    this.internalIps,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.encodeList<PerInstanceConfigPreservedStateDisk,
          Map<String, dynamic>>(disksValue, (value) => value.toMap());
    }
    final externalIpsValue = externalIps;
    if (externalIpsValue != null) {
      map['externalIps'] = Input.encodeList<
          PerInstanceConfigPreservedStateExternalIp,
          Map<String, dynamic>>(externalIpsValue, (value) => value.toMap());
    }
    final internalIpsValue = internalIps;
    if (internalIpsValue != null) {
      map['internalIps'] = Input.encodeList<
          PerInstanceConfigPreservedStateInternalIp,
          Map<String, dynamic>>(internalIpsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    return map;
  }

  factory PerInstanceConfigPreservedState.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigPreservedState(
      disks: map['disks'] == null
          ? null
          : Input.decodeList<PerInstanceConfigPreservedStateDisk>(
              map['disks'],
              (value) => PerInstanceConfigPreservedStateDisk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      externalIps: map['externalIps'] == null
          ? null
          : Input.decodeList<PerInstanceConfigPreservedStateExternalIp>(
              map['externalIps'],
              (value) => PerInstanceConfigPreservedStateExternalIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      internalIps: map['internalIps'] == null
          ? null
          : Input.decodeList<PerInstanceConfigPreservedStateInternalIp>(
              map['internalIps'],
              (value) => PerInstanceConfigPreservedStateInternalIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}
