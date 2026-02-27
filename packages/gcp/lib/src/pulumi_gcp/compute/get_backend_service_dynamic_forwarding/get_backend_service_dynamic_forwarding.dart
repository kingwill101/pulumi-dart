// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_dynamic_forwarding_ip_port_selection/get_backend_service_dynamic_forwarding_ip_port_selection.dart';

class GetBackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  final List<GetBackendServiceDynamicForwardingIpPortSelection>
      ipPortSelections;

  GetBackendServiceDynamicForwarding({
    required this.ipPortSelections,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipPortSelections'] = pulumi.Input.encodeList<
        GetBackendServiceDynamicForwardingIpPortSelection,
        Map<String, dynamic>>(ipPortSelections, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceDynamicForwarding(
      ipPortSelections: pulumi.Input.decodeList<
              GetBackendServiceDynamicForwardingIpPortSelection>(
          map['ipPortSelections'],
          (value) => GetBackendServiceDynamicForwardingIpPortSelection.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
