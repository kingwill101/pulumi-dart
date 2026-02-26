// ignore_for_file: unused_element, unnecessary_cast

import '../launch_template_network_interface_ena_srd_specification_ena_srd_udp_specification/launch_template_network_interface_ena_srd_specification_ena_srd_udp_specification.dart';

class LaunchTemplateNetworkInterfaceEnaSrdSpecification {
  /// Whether to enable ENA Express. ENA Express uses AWS Scalable Reliable Datagram (SRD) technology to improve the performance of TCP traffic.
  final bool? enaSrdEnabled;

  /// Configuration for ENA Express UDP optimization. See details below.
  final LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification?
      enaSrdUdpSpecification;

  LaunchTemplateNetworkInterfaceEnaSrdSpecification({
    this.enaSrdEnabled,
    this.enaSrdUdpSpecification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enaSrdEnabledValue = enaSrdEnabled;
    if (enaSrdEnabledValue != null) {
      map['enaSrdEnabled'] = enaSrdEnabledValue;
    }
    final enaSrdUdpSpecificationValue = enaSrdUdpSpecification;
    if (enaSrdUdpSpecificationValue != null) {
      map['enaSrdUdpSpecification'] = enaSrdUdpSpecificationValue.toMap();
    }
    return map;
  }

  factory LaunchTemplateNetworkInterfaceEnaSrdSpecification.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterfaceEnaSrdSpecification(
      enaSrdEnabled:
          map['enaSrdEnabled'] == null ? null : map['enaSrdEnabled'] as bool,
      enaSrdUdpSpecification: map['enaSrdUdpSpecification'] == null
          ? null
          : LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification
              .fromMap((map['enaSrdUdpSpecification'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
