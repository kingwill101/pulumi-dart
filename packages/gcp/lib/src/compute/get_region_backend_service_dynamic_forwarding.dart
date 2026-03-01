// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_dynamic_forwarding_ip_port_selection.dart';

class GetRegionBackendServiceDynamicForwarding {
  /// IP:PORT based dynamic forwarding configuration.
  final List<GetRegionBackendServiceDynamicForwardingIpPortSelection>
  ipPortSelections;

  /// Creates a new [GetRegionBackendServiceDynamicForwarding].
  /// [ipPortSelections] IP:PORT based dynamic forwarding configuration.
  GetRegionBackendServiceDynamicForwarding({required this.ipPortSelections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipPortSelections':
          pulumi.Input.encodeList<
            GetRegionBackendServiceDynamicForwardingIpPortSelection,
            Map<String, dynamic>
          >(ipPortSelections, (value) => value.toMap()),
    };
  }

  factory GetRegionBackendServiceDynamicForwarding.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionBackendServiceDynamicForwarding(
      ipPortSelections:
          pulumi.Input.decodeList<
            GetRegionBackendServiceDynamicForwardingIpPortSelection
          >(
            map['ipPortSelections'],
            (value) =>
                GetRegionBackendServiceDynamicForwardingIpPortSelection.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
