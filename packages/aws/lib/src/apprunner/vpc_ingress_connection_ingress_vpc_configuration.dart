// ignore_for_file: unused_element, unnecessary_cast

class VpcIngressConnectionIngressVpcConfiguration {
  /// The ID of the VPC endpoint that your App Runner service connects to.
  final String? vpcEndpointId;

  /// The ID of the VPC that is used for the VPC endpoint.
  final String? vpcId;

  /// Creates a new [VpcIngressConnectionIngressVpcConfiguration].
  /// [vpcEndpointId] The ID of the VPC endpoint that your App Runner service connects to.
  /// [vpcId] The ID of the VPC that is used for the VPC endpoint.
  VpcIngressConnectionIngressVpcConfiguration({this.vpcEndpointId, this.vpcId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vpcEndpointId': ?vpcEndpointId, 'vpcId': ?vpcId};
  }

  factory VpcIngressConnectionIngressVpcConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcIngressConnectionIngressVpcConfiguration(
      vpcEndpointId: map['vpcEndpointId'] == null
          ? null
          : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
