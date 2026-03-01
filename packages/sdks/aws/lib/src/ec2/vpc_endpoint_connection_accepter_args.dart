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
    pulumi.Output<String>? region,
    required pulumi.Output<String> vpcEndpointId,
    required pulumi.Output<String> vpcEndpointServiceId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcEndpointId = pulumi.Input.asInput<String>(vpcEndpointId),
      vpcEndpointServiceId = pulumi.Input.asInput<String>(vpcEndpointServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcEndpointId': vpcEndpointId,
      'vpcEndpointServiceId': vpcEndpointServiceId,
    };
  }

  factory VpcEndpointConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionAccepterArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcEndpointId: pulumi.Output.create<String>(map['vpcEndpointId'] as String),
      vpcEndpointServiceId: pulumi.Output.create<String>(map['vpcEndpointServiceId'] as String),
    );
  }
}

