// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIngressConnectionIngressVpcConfiguration {
  /// The ID of the VPC endpoint that your App Runner service connects to.
  final pulumi.Input<String>? vpcEndpointId;
  /// The ID of the VPC that is used for the VPC endpoint.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcIngressConnectionIngressVpcConfiguration].
  /// [vpcEndpointId] The ID of the VPC endpoint that your App Runner service connects to.
  /// [vpcId] The ID of the VPC that is used for the VPC endpoint.
  VpcIngressConnectionIngressVpcConfiguration({
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory VpcIngressConnectionIngressVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return VpcIngressConnectionIngressVpcConfiguration(
      vpcEndpointId: map['vpcEndpointId'] == null ? null : (map['vpcEndpointId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

