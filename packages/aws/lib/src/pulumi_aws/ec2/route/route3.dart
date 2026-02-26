import 'package:pulumi/pulumi.dart';
import 'route_args3.dart';

/// Provides a resource to create a routing table entry (a route) in a VPC routing table.
///
///
/// > **NOTE on <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span> attribute:** The AWS API is very forgiving with the resource ID passed in the <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span> attribute. For example an <span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span> resource can be created with an <span pulumi-lang-nodejs="`aws.ec2.NatGateway`" pulumi-lang-dotnet="`aws.ec2.NatGateway`" pulumi-lang-go="`ec2.NatGateway`" pulumi-lang-python="`ec2.NatGateway`" pulumi-lang-yaml="`aws.ec2.NatGateway`" pulumi-lang-java="`aws.ec2.NatGateway`">`aws.ec2.NatGateway`</span> or <span pulumi-lang-nodejs="`aws.ec2.EgressOnlyInternetGateway`" pulumi-lang-dotnet="`aws.ec2.EgressOnlyInternetGateway`" pulumi-lang-go="`ec2.EgressOnlyInternetGateway`" pulumi-lang-python="`ec2.EgressOnlyInternetGateway`" pulumi-lang-yaml="`aws.ec2.EgressOnlyInternetGateway`" pulumi-lang-java="`aws.ec2.EgressOnlyInternetGateway`">`aws.ec2.EgressOnlyInternetGateway`</span> ID specified for the <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span> attribute. Specifying anything other than an <span pulumi-lang-nodejs="`aws.ec2.InternetGateway`" pulumi-lang-dotnet="`aws.ec2.InternetGateway`" pulumi-lang-go="`ec2.InternetGateway`" pulumi-lang-python="`ec2.InternetGateway`" pulumi-lang-yaml="`aws.ec2.InternetGateway`" pulumi-lang-java="`aws.ec2.InternetGateway`">`aws.ec2.InternetGateway`</span> or <span pulumi-lang-nodejs="`aws.ec2.VpnGateway`" pulumi-lang-dotnet="`aws.ec2.VpnGateway`" pulumi-lang-go="`ec2.VpnGateway`" pulumi-lang-python="`ec2.VpnGateway`" pulumi-lang-yaml="`aws.ec2.VpnGateway`" pulumi-lang-java="`aws.ec2.VpnGateway`">`aws.ec2.VpnGateway`</span> ID will lead to this provider reporting a permanent diff between your configuration and recorded state, as the AWS API returns the more-specific attribute. If you are experiencing constant diffs with an <span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span> resource, the first thing to check is that the correct attribute is being specified.
///
/// > **NOTE on combining <span pulumi-lang-nodejs="`vpcEndpointId`" pulumi-lang-dotnet="`VpcEndpointId`" pulumi-lang-go="`vpcEndpointId`" pulumi-lang-python="`vpc_endpoint_id`" pulumi-lang-yaml="`vpcEndpointId`" pulumi-lang-java="`vpcEndpointId`">`vpc_endpoint_id`</span> and <span pulumi-lang-nodejs="`destinationPrefixListId`" pulumi-lang-dotnet="`DestinationPrefixListId`" pulumi-lang-go="`destinationPrefixListId`" pulumi-lang-python="`destination_prefix_list_id`" pulumi-lang-yaml="`destinationPrefixListId`" pulumi-lang-java="`destinationPrefixListId`">`destination_prefix_list_id`</span> attributes:** To associate a Gateway VPC Endpoint (such as S3) with destination prefix list, use the <span pulumi-lang-nodejs="`aws.ec2.VpcEndpointRouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2.VpcEndpointRouteTableAssociation`" pulumi-lang-go="`ec2.VpcEndpointRouteTableAssociation`" pulumi-lang-python="`ec2.VpcEndpointRouteTableAssociation`" pulumi-lang-yaml="`aws.ec2.VpcEndpointRouteTableAssociation`" pulumi-lang-java="`aws.ec2.VpcEndpointRouteTableAssociation`">`aws.ec2.VpcEndpointRouteTableAssociation`</span> resource instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const r = new aws.ec2.Route("r", {
/// routeTableId: testing.id,
/// destinationCidrBlock: "10.0.1.0/22",
/// vpcPeeringConnectionId: "pcx-45ff3dc1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// r = aws.ec2.Route("r",
/// route_table_id=testing["id"],
/// destination_cidr_block="10.0.1.0/22",
/// vpc_peering_connection_id="pcx-45ff3dc1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var r = new Aws.Ec2.Route("r", new()
/// {
/// RouteTableId = testing.Id,
/// DestinationCidrBlock = "10.0.1.0/22",
/// VpcPeeringConnectionId = "pcx-45ff3dc1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewRoute(ctx, "r", &ec2.RouteArgs{
/// RouteTableId:           pulumi.Any(testing.Id),
/// DestinationCidrBlock:   pulumi.String("10.0.1.0/22"),
/// VpcPeeringConnectionId: pulumi.String("pcx-45ff3dc1"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var r = new Route("r", RouteArgs.builder()
/// .routeTableId(testing.id())
/// .destinationCidrBlock("10.0.1.0/22")
/// .vpcPeeringConnectionId("pcx-45ff3dc1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// r:
/// type: aws:ec2:Route
/// properties:
/// routeTableId: ${testing.id}
/// destinationCidrBlock: 10.0.1.0/22
/// vpcPeeringConnectionId: pcx-45ff3dc1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Example IPv6 Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpc = new aws.ec2.Vpc("vpc", {
/// cidrBlock: "10.1.0.0/16",
/// assignGeneratedIpv6CidrBlock: true,
/// });
/// const egress = new aws.ec2.EgressOnlyInternetGateway("egress", {vpcId: vpc.id});
/// const r = new aws.ec2.Route("r", {
/// routeTableId: "rtb-4fbb3ac4",
/// destinationIpv6CidrBlock: "::/0",
/// egressOnlyGatewayId: egress.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc = aws.ec2.Vpc("vpc",
/// cidr_block="10.1.0.0/16",
/// assign_generated_ipv6_cidr_block=True)
/// egress = aws.ec2.EgressOnlyInternetGateway("egress", vpc_id=vpc.id)
/// r = aws.ec2.Route("r",
/// route_table_id="rtb-4fbb3ac4",
/// destination_ipv6_cidr_block="::/0",
/// egress_only_gateway_id=egress.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var vpc = new Aws.Ec2.Vpc("vpc", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// AssignGeneratedIpv6CidrBlock = true,
/// });
///
/// var egress = new Aws.Ec2.EgressOnlyInternetGateway("egress", new()
/// {
/// VpcId = vpc.Id,
/// });
///
/// var r = new Aws.Ec2.Route("r", new()
/// {
/// RouteTableId = "rtb-4fbb3ac4",
/// DestinationIpv6CidrBlock = "::/0",
/// EgressOnlyGatewayId = egress.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// vpc, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// CidrBlock:                    pulumi.String("10.1.0.0/16"),
/// AssignGeneratedIpv6CidrBlock: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// egress, err := ec2.NewEgressOnlyInternetGateway(ctx, "egress", &ec2.EgressOnlyInternetGatewayArgs{
/// VpcId: vpc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewRoute(ctx, "r", &ec2.RouteArgs{
/// RouteTableId:             pulumi.String("rtb-4fbb3ac4"),
/// DestinationIpv6CidrBlock: pulumi.String("::/0"),
/// EgressOnlyGatewayId:      egress.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var vpc = new Vpc("vpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .assignGeneratedIpv6CidrBlock(true)
/// .build());
///
/// var egress = new EgressOnlyInternetGateway("egress", EgressOnlyInternetGatewayArgs.builder()
/// .vpcId(vpc.id())
/// .build());
///
/// var r = new Route("r", RouteArgs.builder()
/// .routeTableId("rtb-4fbb3ac4")
/// .destinationIpv6CidrBlock("::/0")
/// .egressOnlyGatewayId(egress.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// vpc:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// assignGeneratedIpv6CidrBlock: true
/// egress:
/// type: aws:ec2:EgressOnlyInternetGateway
/// properties:
/// vpcId: ${vpc.id}
/// r:
/// type: aws:ec2:Route
/// properties:
/// routeTableId: rtb-4fbb3ac4
/// destinationIpv6CidrBlock: ::/0
/// egressOnlyGatewayId: ${egress.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`routeTableId`" pulumi-lang-dotnet="`RouteTableId`" pulumi-lang-go="`routeTableId`" pulumi-lang-python="`route_table_id`" pulumi-lang-yaml="`routeTableId`" pulumi-lang-java="`routeTableId`">`route_table_id`</span> - (String) ID of the route table.
///
/// #### Optional
///
/// > Exactly one of of <span pulumi-lang-nodejs="`destinationCidrBlock`" pulumi-lang-dotnet="`DestinationCidrBlock`" pulumi-lang-go="`destinationCidrBlock`" pulumi-lang-python="`destination_cidr_block`" pulumi-lang-yaml="`destinationCidrBlock`" pulumi-lang-java="`destinationCidrBlock`">`destination_cidr_block`</span>, <span pulumi-lang-nodejs="`destinationIpv6CidrBlock`" pulumi-lang-dotnet="`DestinationIpv6CidrBlock`" pulumi-lang-go="`destinationIpv6CidrBlock`" pulumi-lang-python="`destination_ipv6_cidr_block`" pulumi-lang-yaml="`destinationIpv6CidrBlock`" pulumi-lang-java="`destinationIpv6CidrBlock`">`destination_ipv6_cidr_block`</span>, or <span pulumi-lang-nodejs="`destinationPrefixListId`" pulumi-lang-dotnet="`DestinationPrefixListId`" pulumi-lang-go="`destinationPrefixListId`" pulumi-lang-python="`destination_prefix_list_id`" pulumi-lang-yaml="`destinationPrefixListId`" pulumi-lang-java="`destinationPrefixListId`">`destination_prefix_list_id`</span> is required.
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`destinationCidrBlock`" pulumi-lang-dotnet="`DestinationCidrBlock`" pulumi-lang-go="`destinationCidrBlock`" pulumi-lang-python="`destination_cidr_block`" pulumi-lang-yaml="`destinationCidrBlock`" pulumi-lang-java="`destinationCidrBlock`">`destination_cidr_block`</span> - (String) Destination IPv4 CIDR block.
/// * <span pulumi-lang-nodejs="`destinationIpv6CidrBlock`" pulumi-lang-dotnet="`DestinationIpv6CidrBlock`" pulumi-lang-go="`destinationIpv6CidrBlock`" pulumi-lang-python="`destination_ipv6_cidr_block`" pulumi-lang-yaml="`destinationIpv6CidrBlock`" pulumi-lang-java="`destinationIpv6CidrBlock`">`destination_ipv6_cidr_block`</span> - (String) Destination IPv6 CIDR block.
/// * <span pulumi-lang-nodejs="`destinationPrefixListId`" pulumi-lang-dotnet="`DestinationPrefixListId`" pulumi-lang-go="`destinationPrefixListId`" pulumi-lang-python="`destination_prefix_list_id`" pulumi-lang-yaml="`destinationPrefixListId`" pulumi-lang-java="`destinationPrefixListId`">`destination_prefix_list_id`</span> - (String) Destination IPv6 CIDR block.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
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

  /// Identifier of a VPC internet gateway or a virtual private gateway. Specify <span pulumi-lang-nodejs="`local`" pulumi-lang-dotnet="`Local`" pulumi-lang-go="`local`" pulumi-lang-python="`local`" pulumi-lang-yaml="`local`" pulumi-lang-java="`local`">`local`</span> when updating a previously imported local route.
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

  /// The state of the route - <span pulumi-lang-nodejs="`active`" pulumi-lang-dotnet="`Active`" pulumi-lang-go="`active`" pulumi-lang-python="`active`" pulumi-lang-yaml="`active`" pulumi-lang-java="`active`">`active`</span> or <span pulumi-lang-nodejs="`blackhole`" pulumi-lang-dotnet="`Blackhole`" pulumi-lang-go="`blackhole`" pulumi-lang-python="`blackhole`" pulumi-lang-yaml="`blackhole`" pulumi-lang-java="`blackhole`">`blackhole`</span>.
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
    this.carrierGatewayId = Output.createUnknown<String?>();
    this.coreNetworkArn = Output.createUnknown<String?>();
    this.destinationCidrBlock = Output.createUnknown<String?>();
    this.destinationIpv6CidrBlock = Output.createUnknown<String?>();
    this.destinationPrefixListId = Output.createUnknown<String?>();
    this.egressOnlyGatewayId = Output.createUnknown<String?>();
    this.gatewayId = Output.createUnknown<String?>();
    this.instanceId = Output.createUnknown<String>();
    this.instanceOwnerId = Output.createUnknown<String>();
    this.localGatewayId = Output.createUnknown<String?>();
    this.natGatewayId = Output.createUnknown<String?>();
    this.networkInterfaceId = Output.createUnknown<String>();
    this.origin = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.routeTableId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.transitGatewayId = Output.createUnknown<String?>();
    this.vpcEndpointId = Output.createUnknown<String?>();
    this.vpcPeeringConnectionId = Output.createUnknown<String?>();
  }
}
