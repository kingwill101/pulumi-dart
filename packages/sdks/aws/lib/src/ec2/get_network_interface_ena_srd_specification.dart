// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interface_ena_srd_specification_ena_srd_udp_specification.dart';

class GetNetworkInterfaceEnaSrdSpecification {
  /// Whether ENA Express is enabled for the network interface.
  final pulumi.Input<bool> enaSrdEnabled;
  /// ENA Express UDP configuration. See below.
  final pulumi.Input<List<GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification>> enaSrdUdpSpecifications;

  /// Creates a new [GetNetworkInterfaceEnaSrdSpecification].
  /// [enaSrdEnabled] Whether ENA Express is enabled for the network interface.
  /// [enaSrdUdpSpecifications] ENA Express UDP configuration. See below.
  const GetNetworkInterfaceEnaSrdSpecification({
    required this.enaSrdEnabled,
    required this.enaSrdUdpSpecifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdEnabled': enaSrdEnabled,
      'enaSrdUdpSpecifications': pulumi.Input.mapInputValue<List<GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification>, List<Map<String, dynamic>>>(enaSrdUdpSpecifications, (value) => pulumi.Input.encodeList<GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInterfaceEnaSrdSpecification.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceEnaSrdSpecification(
      enaSrdEnabled: pulumi.Input.fromValue(map['enaSrdEnabled'] as bool),
      enaSrdUdpSpecifications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification>(map['enaSrdUdpSpecifications']!, (value) => GetNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
