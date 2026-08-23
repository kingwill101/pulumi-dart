// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIngressConnectionIngressVpcConfiguration {
  /// ID of the VPC endpoint that your App Runner service connects to.
  final pulumi.Input<String>? vpcEndpointId;
  /// ID of the VPC that is used for the VPC endpoint.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcIngressConnectionIngressVpcConfiguration].
  /// [vpcEndpointId] ID of the VPC endpoint that your App Runner service connects to.
  /// [vpcId] ID of the VPC that is used for the VPC endpoint.
  const VpcIngressConnectionIngressVpcConfiguration({
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
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
