// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_dynamic_forwarding_ip_port_selection.dart';

class BackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  /// Structure is documented below.
  final BackendServiceDynamicForwardingIpPortSelection? ipPortSelection;

  /// Creates a new [BackendServiceDynamicForwarding].
  /// [ipPortSelection] IP:PORT based dynamic forwarding configuration.
  BackendServiceDynamicForwarding({
    this.ipPortSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPortSelection': ?ipPortSelection == null ? null : ipPortSelection!.toMap(),
    };
  }

  factory BackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return BackendServiceDynamicForwarding(
      ipPortSelection: map['ipPortSelection'] == null ? null : BackendServiceDynamicForwardingIpPortSelection.fromMap((map['ipPortSelection'] as Map).cast<String, dynamic>()),
    );
  }
}

