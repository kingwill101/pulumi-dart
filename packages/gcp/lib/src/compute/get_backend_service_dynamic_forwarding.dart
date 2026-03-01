// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_dynamic_forwarding_ip_port_selection.dart';

class GetBackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  final List<GetBackendServiceDynamicForwardingIpPortSelection>
  ipPortSelections;

  /// Creates a new [GetBackendServiceDynamicForwarding].
  /// [ipPortSelections] IP:PORT based dynamic forwarding configuration.
  GetBackendServiceDynamicForwarding({required this.ipPortSelections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPortSelections':
          pulumi.Input.encodeList<
            GetBackendServiceDynamicForwardingIpPortSelection,
            Map<String, dynamic>
          >(ipPortSelections, (value) => value.toMap()),
    };
  }

  factory GetBackendServiceDynamicForwarding.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceDynamicForwarding(
      ipPortSelections:
          pulumi.Input.decodeList<
            GetBackendServiceDynamicForwardingIpPortSelection
          >(
            map['ipPortSelections'],
            (value) =>
                GetBackendServiceDynamicForwardingIpPortSelection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
