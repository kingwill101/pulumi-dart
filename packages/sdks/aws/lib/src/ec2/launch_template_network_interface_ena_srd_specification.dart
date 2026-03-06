// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_network_interface_ena_srd_specification_ena_srd_udp_specification.dart';

class LaunchTemplateNetworkInterfaceEnaSrdSpecification {
  /// Whether to enable ENA Express. ENA Express uses AWS Scalable Reliable Datagram (SRD) technology to improve the performance of TCP traffic.
  final pulumi.Input<bool>? enaSrdEnabled;
  /// Configuration for ENA Express UDP optimization. See details below.
  final pulumi.Input<LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification>? enaSrdUdpSpecification;

  /// Creates a new [LaunchTemplateNetworkInterfaceEnaSrdSpecification].
  /// [enaSrdEnabled] Whether to enable ENA Express. ENA Express uses AWS Scalable Reliable Datagram (SRD) technology to improve the performance of TCP traffic.
  /// [enaSrdUdpSpecification] Configuration for ENA Express UDP optimization. See details below.
  const LaunchTemplateNetworkInterfaceEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdEnabled': ?enaSrdEnabled,
      'enaSrdUdpSpecification': ?pulumi.Input.mapOptionalInputValue<LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification, Map<String, dynamic>>(enaSrdUdpSpecification, (value) => value.toMap()),
    };
  }

  factory LaunchTemplateNetworkInterfaceEnaSrdSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterfaceEnaSrdSpecification(
      enaSrdEnabled: (() { final guardedValue = map['enaSrdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enaSrdUdpSpecification: (() { final guardedValue = map['enaSrdUdpSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

