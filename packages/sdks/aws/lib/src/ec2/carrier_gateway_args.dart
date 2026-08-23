// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_carrier_gateway_carrier_gateway_args_doc}
/// The set of arguments for CarrierGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_carrier_gateway_carrier_gateway_args_doc}
class CarrierGatewayArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC to associate with the carrier gateway.
  final pulumi.Input<String> vpcId;

  /// Creates a new [CarrierGatewayArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The ID of the VPC to associate with the carrier gateway.
  const CarrierGatewayArgs({
    this.region,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory CarrierGatewayArgs.fromMap(Map<String, dynamic> map) {
    return CarrierGatewayArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
