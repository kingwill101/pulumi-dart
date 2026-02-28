// ignore_for_file: unused_element, unnecessary_cast

import 'region_backend_service_dynamic_forwarding_ip_port_selection.dart';

class RegionBackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final RegionBackendServiceDynamicForwardingIpPortSelection? ipPortSelection;

  /// Creates a new [RegionBackendServiceDynamicForwarding].
  /// [ipPortSelection] IP:PORT based dynamic forwarding configuration.
  RegionBackendServiceDynamicForwarding({
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipPortSelectionValue = ipPortSelection;
    if (ipPortSelectionValue != null) {
      map['ipPortSelection'] = ipPortSelectionValue.toMap();
    }
    return map;
  }

  factory RegionBackendServiceDynamicForwarding.fromMap(
      Map<String, dynamic> map) {
    return RegionBackendServiceDynamicForwarding(
      ipPortSelection: map['ipPortSelection'] == null
          ? null
          : RegionBackendServiceDynamicForwardingIpPortSelection.fromMap(
              (map['ipPortSelection'] as Map).cast<String, dynamic>()),
    );
  }
}
