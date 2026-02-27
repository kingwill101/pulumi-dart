import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_connection_accepter_args.dart';

/// Provides a resource to accept a pending VPC Endpoint Connection accept request to VPC Endpoint Service.
///
/// ## Example Usage
///
/// ### Accept cross-account request
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Services using ID of the connection, which is the `VPC Endpoint Service ID` and `VPC Endpoint ID` separated by underscore (`_`).. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter foo vpce-svc-0f97a19d3fa8220bc_vpce-010601a6db371e263
/// ```
class VpcEndpointConnectionAccepter extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS VPC Endpoint ID.
  late final Output<String> vpcEndpointId;

  /// AWS VPC Endpoint Service ID.
  late final Output<String> vpcEndpointServiceId;

  /// State of the VPC Endpoint.
  late final Output<String> vpcEndpointState;

  VpcEndpointConnectionAccepter(
    String name, {
    VpcEndpointConnectionAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointConnectionAccepter:VpcEndpointConnectionAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
    this.vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
    this.vpcEndpointState = registerOutput<String>('vpcEndpointState');
  }
}
