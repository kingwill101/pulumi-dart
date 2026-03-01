// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification {
  /// Whether to enable UDP traffic optimization through ENA Express. Requires `ena_srd_enabled` to be `true`.
  ///
  /// NOTE: ENA Express requires [specific instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html#ena-express-requirements) and minimum bandwidth of 25 Gbps.
  final bool? enaSrdUdpEnabled;

  /// Creates a new [LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification].
  /// [enaSrdUdpEnabled] Whether to enable UDP traffic optimization through ENA Express. Requires `ena_srd_enabled` to be `true`.
  LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enaSrdUdpEnabled': ?enaSrdUdpEnabled};
  }

  factory LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification(
      enaSrdUdpEnabled: map['enaSrdUdpEnabled'] == null
          ? null
          : map['enaSrdUdpEnabled'] as bool,
    );
  }
}
