import 'package:pulumi/pulumi.dart';
import 'route_args3.dart';

/// Provides a resource to create a routing table entry (a route) in a VPC routing table.
///
///
/// > **NOTE on `gateway_id` attribute:** The AWS API is very forgiving with the resource ID passed in the `gateway_id` attribute. For example an `aws.ec2.Route` resource can be created with an `aws.ec2.NatGateway` or `aws.ec2.EgressOnlyInternetGateway` ID specified for the `gateway_id` attribute. Specifying anything other than an `aws.ec2.InternetGateway` or `aws.ec2.VpnGateway` ID will lead to this provider reporting a permanent diff between your configuration and recorded state, as the AWS API returns the more-specific attribute. If you are experiencing constant diffs with an `aws.ec2.Route` resource, the first thing to check is that the correct attribute is being specified.
///
/// > **NOTE on combining `vpc_endpoint_id` and `destination_prefix_list_id` attributes:** To associate a Gateway VPC Endpoint (such as S3) with destination prefix list, use the `aws.ec2.VpcEndpointRouteTableAssociation` resource instead.
///
/// ## Example Usage
///
///
///
/// ## Example IPv6 Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `route_table_id` - (String) ID of the route table.
///
/// #### Optional
///
/// > Exactly one of of `destination_cidr_block`, `destination_ipv6_cidr_block`, or `destination_prefix_list_id` is required.
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `destination_cidr_block` - (String) Destination IPv4 CIDR block.
/// * `destination_ipv6_cidr_block` - (String) Destination IPv6 CIDR block.
/// * `destination_prefix_list_id` - (String) Destination IPv6 CIDR block.
/// * `region` (String) Region where this resource is managed.
///
///
/// Import a route in route table `rtb-656C65616E6F72` with an IPv6 destination CIDR of `2620:0:2d0:200::8/125`:
///
///
/// Import a route in route table `rtb-656C65616E6F72` with a managed prefix list destination of `pl-0570a1d2d725c16be`:
///
///
/// **Using `pulumi import` to import** individual routes using `ROUTETABLEID_DESTINATION`. Import [local routes](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html#RouteTables) using the VPC's IPv4 or IPv6 CIDR blocks. For example:
///
/// Import a route in route table `rtb-656C65616E6F72` with an IPv4 destination CIDR of `10.42.0.0/16`:
///
/// ```sh
/// $ pulumi import aws:ec2/route:Route my_route rtb-656C65616E6F72_10.42.0.0/16
/// ```
///
/// Import a route in route table `rtb-656C65616E6F72` with an IPv6 destination CIDR of `2620:0:2d0:200::8/125`:
///
/// ```sh
/// $ pulumi import aws:ec2/route:Route my_route rtb-656C65616E6F72_2620:0:2d0:200::8/125
/// ```
///
/// Import a route in route table `rtb-656C65616E6F72` with a managed prefix list destination of `pl-0570a1d2d725c16be`:
///
/// ```sh
/// $ pulumi import aws:ec2/route:Route my_route rtb-656C65616E6F72_pl-0570a1d2d725c16be
/// ```
class Route3 extends CustomResource {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  late final Output<String?> carrierGatewayId;

  /// The Amazon Resource Name (ARN) of a core network.
  late final Output<String?> coreNetworkArn;

  /// The destination CIDR block.
  late final Output<String?> destinationCidrBlock;

  /// The destination IPv6 CIDR block.
  late final Output<String?> destinationIpv6CidrBlock;

  /// The ID of a managed prefix list destination.
  ///
  /// One of the following target arguments must be supplied:
  late final Output<String?> destinationPrefixListId;

  /// Identifier of a VPC Egress Only Internet Gateway.
  late final Output<String?> egressOnlyGatewayId;

  /// Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  late final Output<String?> gatewayId;

  /// Identifier of an EC2 instance.
  late final Output<String> instanceId;

  /// The AWS account ID of the owner of the EC2 instance.
  late final Output<String> instanceOwnerId;

  /// Identifier of a Outpost local gateway.
  late final Output<String?> localGatewayId;

  /// Identifier of a VPC NAT gateway.
  late final Output<String?> natGatewayId;

  /// Identifier of an EC2 network interface.
  late final Output<String> networkInterfaceId;

  /// How the route was created - `CreateRouteTable`, `CreateRoute` or `EnableVgwRoutePropagation`.
  late final Output<String> origin;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the routing table.
  ///
  /// One of the following destination arguments must be supplied:
  late final Output<String> routeTableId;

  /// The state of the route - `active` or `blackhole`.
  late final Output<String> state;

  /// Identifier of an EC2 Transit Gateway.
  late final Output<String?> transitGatewayId;

  /// Identifier of a VPC Endpoint.
  late final Output<String?> vpcEndpointId;

  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  late final Output<String?> vpcPeeringConnectionId;

  Route3(
    String name, {
    RouteArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/route:Route',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.carrierGatewayId = registerOutput<String?>('carrierGatewayId');
    this.coreNetworkArn = registerOutput<String?>('coreNetworkArn');
    this.destinationCidrBlock = registerOutput<String?>('destinationCidrBlock');
    this.destinationIpv6CidrBlock =
        registerOutput<String?>('destinationIpv6CidrBlock');
    this.destinationPrefixListId =
        registerOutput<String?>('destinationPrefixListId');
    this.egressOnlyGatewayId = registerOutput<String?>('egressOnlyGatewayId');
    this.gatewayId = registerOutput<String?>('gatewayId');
    this.instanceId = registerOutput<String>('instanceId');
    this.instanceOwnerId = registerOutput<String>('instanceOwnerId');
    this.localGatewayId = registerOutput<String?>('localGatewayId');
    this.natGatewayId = registerOutput<String?>('natGatewayId');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.origin = registerOutput<String>('origin');
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.state = registerOutput<String>('state');
    this.transitGatewayId = registerOutput<String?>('transitGatewayId');
    this.vpcEndpointId = registerOutput<String?>('vpcEndpointId');
    this.vpcPeeringConnectionId =
        registerOutput<String?>('vpcPeeringConnectionId');
  }
}
