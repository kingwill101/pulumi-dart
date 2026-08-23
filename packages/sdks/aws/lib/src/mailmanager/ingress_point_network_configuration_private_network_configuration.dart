// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngressPointNetworkConfigurationPrivateNetworkConfiguration {
  /// Identifier of the VPC endpoint to associate with the ingress point.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [IngressPointNetworkConfigurationPrivateNetworkConfiguration].
  /// [vpcEndpointId] Identifier of the VPC endpoint to associate with the ingress point.
  const IngressPointNetworkConfigurationPrivateNetworkConfiguration({
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory IngressPointNetworkConfigurationPrivateNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return IngressPointNetworkConfigurationPrivateNetworkConfiguration(
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
    );
  }
}
