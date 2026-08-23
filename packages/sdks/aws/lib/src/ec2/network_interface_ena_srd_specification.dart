// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ena_srd_specification_ena_srd_udp_specification.dart';

class NetworkInterfaceEnaSrdSpecification {
  /// Indicates whether ENA Express is enabled for the network interface.
  final pulumi.Input<bool>? enaSrdEnabled;
  /// Configures ENA Express for UDP network traffic. See ENA SRD UDP Specification below for more details.
  final pulumi.Input<NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification>? enaSrdUdpSpecification;

  /// Creates a new [NetworkInterfaceEnaSrdSpecification].
  /// [enaSrdEnabled] Indicates whether ENA Express is enabled for the network interface.
  /// [enaSrdUdpSpecification] Configures ENA Express for UDP network traffic. See ENA SRD UDP Specification below for more details.
  const NetworkInterfaceEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdEnabled': ?enaSrdEnabled,
      'enaSrdUdpSpecification': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification, Map<String, dynamic>>(enaSrdUdpSpecification, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceEnaSrdSpecification.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceEnaSrdSpecification(
      enaSrdEnabled: (() { final guardedValue = map['enaSrdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enaSrdUdpSpecification: (() { final guardedValue = map['enaSrdUdpSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
