// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../interconnect_group_configured_topology_capability_intended_capability_blocker/interconnect_group_configured_topology_capability_intended_capability_blocker.dart';

class InterconnectGroupConfiguredTopologyCapability {
  /// (Output)
  /// Reasons why configuration.topologyCapability.sla differs
  /// from intent.topologyCapability. This list is empty if and only if those
  /// are the same.
  /// Structure is documented below.
  final List<
          InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker>?
      intendedCapabilityBlockers;

  /// (Output)
  /// Which level of reliability this group is configured to
  /// support.
  final String? supportedSla;

  InterconnectGroupConfiguredTopologyCapability({
    this.intendedCapabilityBlockers,
    this.supportedSla,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final intendedCapabilityBlockersValue = intendedCapabilityBlockers;
    if (intendedCapabilityBlockersValue != null) {
      map['intendedCapabilityBlockers'] = pulumi.Input.encodeList<
          InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker,
          Map<String,
              dynamic>>(intendedCapabilityBlockersValue, (value) => value.toMap());
    }
    final supportedSlaValue = supportedSla;
    if (supportedSlaValue != null) {
      map['supportedSla'] = supportedSlaValue;
    }
    return map;
  }

  factory InterconnectGroupConfiguredTopologyCapability.fromMap(
      Map<String, dynamic> map) {
    return InterconnectGroupConfiguredTopologyCapability(
      intendedCapabilityBlockers: map['intendedCapabilityBlockers'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker>(
              map['intendedCapabilityBlockers'],
              (value) =>
                  InterconnectGroupConfiguredTopologyCapabilityIntendedCapabilityBlocker
                      .fromMap((value as Map).cast<String, dynamic>())),
      supportedSla:
          map['supportedSla'] == null ? null : map['supportedSla'] as String,
    );
  }
}
