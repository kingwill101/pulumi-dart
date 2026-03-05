// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_connection_accepter_vpc_endpoint_connection_accepter_args_doc}
/// The set of arguments for VpcEndpointConnectionAccepter.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_connection_accepter_vpc_endpoint_connection_accepter_args_doc}
class VpcEndpointConnectionAccepterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// AWS VPC Endpoint ID.
  final pulumi.Input<String> vpcEndpointId;
  /// AWS VPC Endpoint Service ID.
  final pulumi.Input<String> vpcEndpointServiceId;

  /// Creates a new [VpcEndpointConnectionAccepterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] AWS VPC Endpoint ID.
  /// [vpcEndpointServiceId] AWS VPC Endpoint Service ID.
  VpcEndpointConnectionAccepterArgs({
    this.region,
    required this.vpcEndpointId,
    required this.vpcEndpointServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcEndpointId': vpcEndpointId,
      'vpcEndpointServiceId': vpcEndpointServiceId,
    };
  }

  factory VpcEndpointConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionAccepterArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
      vpcEndpointServiceId: pulumi.Input.fromValue(map['vpcEndpointServiceId'] as String),
    );
  }
}

