// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification {
  /// Whether to enable UDP traffic optimization through ENA Express. Requires `ena_srd_enabled` to be `true`.
  ///
  /// NOTE: ENA Express requires [specific instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena-express.html#ena-express-requirements) and minimum bandwidth of 25 Gbps.
  final pulumi.Input<bool>? enaSrdUdpEnabled;

  /// Creates a new [LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification].
  /// [enaSrdUdpEnabled] Whether to enable UDP traffic optimization through ENA Express. Requires `ena_srd_enabled` to be `true`.
  const LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification({
    this.enaSrdUdpEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enaSrdUdpEnabled': ?enaSrdUdpEnabled,
    };
  }

  factory LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterfaceEnaSrdSpecificationEnaSrdUdpSpecification(
      enaSrdUdpEnabled: (() { final guardedValue = map['enaSrdUdpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

