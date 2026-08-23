// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngressPointNetworkConfigurationPublicNetworkConfiguration {
  /// IP address type for the public ingress point. Valid values are `IPV4` and `DUAL_STACK`.
  final pulumi.Input<String> ipType;

  /// Creates a new [IngressPointNetworkConfigurationPublicNetworkConfiguration].
  /// [ipType] IP address type for the public ingress point. Valid values are `IPV4` and `DUAL_STACK`.
  const IngressPointNetworkConfigurationPublicNetworkConfiguration({
    required this.ipType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipType': ipType,
    };
  }

  factory IngressPointNetworkConfigurationPublicNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return IngressPointNetworkConfigurationPublicNetworkConfiguration(
      ipType: pulumi.Input.fromValue(map['ipType'] as String),
    );
  }
}
