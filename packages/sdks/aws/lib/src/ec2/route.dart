import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_state.dart';

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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const r = new aws.ec2.Route("r", {
///     routeTableId: testing.id,
///     destinationCidrBlock: "10.0.1.0/22",
///     vpcPeeringConnectionId: "pcx-45ff3dc1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// r = aws.ec2.Route("r",
///     route_table_id=testing["id"],
///     destination_cidr_block="10.0.1.0/22",
///     vpc_peering_connection_id="pcx-45ff3dc1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var r = new Aws.Ec2.Route("r", new()
///     {
///         RouteTableId = testing.Id,
///         DestinationCidrBlock = "10.0.1.0/22",
///         VpcPeeringConnectionId = "pcx-45ff3dc1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewRoute(ctx, "r", &ec2.RouteArgs{
/// 			RouteTableId:           pulumi.Any(testing.Id),
/// 			DestinationCidrBlock:   pulumi.String("10.0.1.0/22"),
/// 			VpcPeeringConnectionId: pulumi.String("pcx-45ff3dc1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var r = new Route("r", RouteArgs.builder()
///             .routeTableId(testing.id())
///             .destinationCidrBlock("10.0.1.0/22")
///             .vpcPeeringConnectionId("pcx-45ff3dc1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   r:
///     type: aws:ec2:Route
///     properties:
///       routeTableId: ${testing.id}
///       destinationCidrBlock: 10.0.1.0/22
///       vpcPeeringConnectionId: pcx-45ff3dc1
/// ```
///
///
/// ## Example IPv6 Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpc = new aws.ec2.Vpc("vpc", {
///     cidrBlock: "10.1.0.0/16",
///     assignGeneratedIpv6CidrBlock: true,
/// });
/// const egress = new aws.ec2.EgressOnlyInternetGateway("egress", {vpcId: vpc.id});
/// const r = new aws.ec2.Route("r", {
///     routeTableId: "rtb-4fbb3ac4",
///     destinationIpv6CidrBlock: "::/0",
///     egressOnlyGatewayId: egress.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc = aws.ec2.Vpc("vpc",
///     cidr_block="10.1.0.0/16",
///     assign_generated_ipv6_cidr_block=True)
/// egress = aws.ec2.EgressOnlyInternetGateway("egress", vpc_id=vpc.id)
/// r = aws.ec2.Route("r",
///     route_table_id="rtb-4fbb3ac4",
///     destination_ipv6_cidr_block="::/0",
///     egress_only_gateway_id=egress.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Aws.Ec2.Vpc("vpc", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///         AssignGeneratedIpv6CidrBlock = true,
///     });
///
///     var egress = new Aws.Ec2.EgressOnlyInternetGateway("egress", new()
///     {
///         VpcId = vpc.Id,
///     });
///
///     var r = new Aws.Ec2.Route("r", new()
///     {
///         RouteTableId = "rtb-4fbb3ac4",
///         DestinationIpv6CidrBlock = "::/0",
///         EgressOnlyGatewayId = egress.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpc, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// 			CidrBlock:                    pulumi.String("10.1.0.0/16"),
/// 			AssignGeneratedIpv6CidrBlock: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		egress, err := ec2.NewEgressOnlyInternetGateway(ctx, "egress", &ec2.EgressOnlyInternetGatewayArgs{
/// 			VpcId: vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewRoute(ctx, "r", &ec2.RouteArgs{
/// 			RouteTableId:             pulumi.String("rtb-4fbb3ac4"),
/// 			DestinationIpv6CidrBlock: pulumi.String("::/0"),
/// 			EgressOnlyGatewayId:      egress.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.EgressOnlyInternetGateway;
/// import com.pulumi.aws.ec2.EgressOnlyInternetGatewayArgs;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var vpc = new Vpc("vpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .assignGeneratedIpv6CidrBlock(true)
///             .build());
///
///         var egress = new EgressOnlyInternetGateway("egress", EgressOnlyInternetGatewayArgs.builder()
///             .vpcId(vpc.id())
///             .build());
///
///         var r = new Route("r", RouteArgs.builder()
///             .routeTableId("rtb-4fbb3ac4")
///             .destinationIpv6CidrBlock("::/0")
///             .egressOnlyGatewayId(egress.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///       assignGeneratedIpv6CidrBlock: true
///   egress:
///     type: aws:ec2:EgressOnlyInternetGateway
///     properties:
///       vpcId: ${vpc.id}
///   r:
///     type: aws:ec2:Route
///     properties:
///       routeTableId: rtb-4fbb3ac4
///       destinationIpv6CidrBlock: ::/0
///       egressOnlyGatewayId: ${egress.id}
/// ```
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
class Route extends pulumi.CustomResource {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  late final pulumi.Output<String?> carrierGatewayId;
  /// The Amazon Resource Name (ARN) of a core network.
  late final pulumi.Output<String?> coreNetworkArn;
  /// The destination CIDR block.
  late final pulumi.Output<String?> destinationCidrBlock;
  /// The destination IPv6 CIDR block.
  late final pulumi.Output<String?> destinationIpv6CidrBlock;
  /// The ID of a managed prefix list destination.
  ///
  /// One of the following target arguments must be supplied:
  late final pulumi.Output<String?> destinationPrefixListId;
  /// Identifier of a VPC Egress Only Internet Gateway.
  late final pulumi.Output<String?> egressOnlyGatewayId;
  /// Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  late final pulumi.Output<String?> gatewayId;
  /// Identifier of an EC2 instance.
  late final pulumi.Output<String> instanceId;
  /// The AWS account ID of the owner of the EC2 instance.
  late final pulumi.Output<String> instanceOwnerId;
  /// Identifier of a Outpost local gateway.
  late final pulumi.Output<String?> localGatewayId;
  /// Identifier of a VPC NAT gateway.
  late final pulumi.Output<String?> natGatewayId;
  /// Identifier of an EC2 network interface.
  late final pulumi.Output<String> networkInterfaceId;
  /// How the route was created - `CreateRouteTable`, `CreateRoute` or `EnableVgwRoutePropagation`.
  late final pulumi.Output<String> origin;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the routing table.
  ///
  /// One of the following destination arguments must be supplied:
  late final pulumi.Output<String> routeTableId;
  /// The state of the route - `active` or `blackhole`.
  late final pulumi.Output<String> state;
  /// Identifier of an EC2 Transit Gateway.
  late final pulumi.Output<String?> transitGatewayId;
  /// Identifier of a VPC Endpoint.
  late final pulumi.Output<String?> vpcEndpointId;
  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  late final pulumi.Output<String?> vpcPeeringConnectionId;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_ec2_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.carrierGatewayId = registerOutput<String?>('carrierGatewayId');
    this.coreNetworkArn = registerOutput<String?>('coreNetworkArn');
    this.destinationCidrBlock = registerOutput<String?>('destinationCidrBlock');
    this.destinationIpv6CidrBlock = registerOutput<String?>('destinationIpv6CidrBlock');
    this.destinationPrefixListId = registerOutput<String?>('destinationPrefixListId');
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
    this.vpcPeeringConnectionId = registerOutput<String?>('vpcPeeringConnectionId');
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(
    String name,
    pulumi.Input<String> id, {
    RouteState? state,
  }) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/route:Route',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.carrierGatewayId = registerOutput<String?>('carrierGatewayId');
    this.coreNetworkArn = registerOutput<String?>('coreNetworkArn');
    this.destinationCidrBlock = registerOutput<String?>('destinationCidrBlock');
    this.destinationIpv6CidrBlock = registerOutput<String?>('destinationIpv6CidrBlock');
    this.destinationPrefixListId = registerOutput<String?>('destinationPrefixListId');
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
    this.vpcPeeringConnectionId = registerOutput<String?>('vpcPeeringConnectionId');
  }
}
