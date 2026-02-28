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
    String? region,
    required String vpcEndpointId,
    required String vpcEndpointServiceId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        vpcEndpointId = pulumi.Input.asInput<String>(vpcEndpointId),
        vpcEndpointServiceId =
            pulumi.Input.asInput<String>(vpcEndpointServiceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcEndpointId'] = vpcEndpointId;
    map['vpcEndpointServiceId'] = vpcEndpointServiceId;
    return map;
  }

  factory VpcEndpointConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointConnectionAccepterArgs(
      region: map['region'] == null ? null : map['region'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcEndpointServiceId: map['vpcEndpointServiceId'] as String,
    );
  }
}
