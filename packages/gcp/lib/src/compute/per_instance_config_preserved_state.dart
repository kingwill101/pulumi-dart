// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state_disk.dart';
import 'per_instance_config_preserved_state_external_ip.dart';
import 'per_instance_config_preserved_state_internal_ip.dart';

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

  /// Creates a new [PerInstanceConfigPreservedState].
  /// [disks] Stateful disks for the instance.
  /// [externalIps] Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [internalIps] Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [metadata] Preserved metadata defined for this instance. This is a list of key->value pairs.
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
      map['disks'] = pulumi.Input.encodeList<
          PerInstanceConfigPreservedStateDisk,
          Map<String, dynamic>>(disksValue, (value) => value.toMap());
    }
    final externalIpsValue = externalIps;
    if (externalIpsValue != null) {
      map['externalIps'] = pulumi.Input.encodeList<
          PerInstanceConfigPreservedStateExternalIp,
          Map<String, dynamic>>(externalIpsValue, (value) => value.toMap());
    }
    final internalIpsValue = internalIps;
    if (internalIpsValue != null) {
      map['internalIps'] = pulumi.Input.encodeList<
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
          : pulumi.Input.decodeList<PerInstanceConfigPreservedStateDisk>(
              map['disks'],
              (value) => PerInstanceConfigPreservedStateDisk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      externalIps: map['externalIps'] == null
          ? null
          : pulumi.Input.decodeList<PerInstanceConfigPreservedStateExternalIp>(
              map['externalIps'],
              (value) => PerInstanceConfigPreservedStateExternalIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      internalIps: map['internalIps'] == null
          ? null
          : pulumi.Input.decodeList<PerInstanceConfigPreservedStateInternalIp>(
              map['internalIps'],
              (value) => PerInstanceConfigPreservedStateInternalIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}
