// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../interconnect_group_configured_topology_capability/interconnect_group_configured_topology_capability.dart';

class InterconnectGroupConfigured {
  /// (Output)
  /// How reliable this topology is configured to be, and why
  /// this group does or does not meet the requirements for the intended
  /// capability.
  /// Structure is documented below.
  final List<InterconnectGroupConfiguredTopologyCapability>?
      topologyCapabilities;

  InterconnectGroupConfigured({
    this.topologyCapabilities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final topologyCapabilitiesValue = topologyCapabilities;
    if (topologyCapabilitiesValue != null) {
      map['topologyCapabilities'] = pulumi.Input.encodeList<
              InterconnectGroupConfiguredTopologyCapability,
              Map<String, dynamic>>(
          topologyCapabilitiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory InterconnectGroupConfigured.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupConfigured(
      topologyCapabilities: map['topologyCapabilities'] == null
          ? null
          : pulumi.Input.decodeList<
                  InterconnectGroupConfiguredTopologyCapability>(
              map['topologyCapabilities'],
              (value) => InterconnectGroupConfiguredTopologyCapability.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
