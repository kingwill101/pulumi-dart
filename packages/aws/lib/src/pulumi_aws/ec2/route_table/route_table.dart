import 'package:pulumi/pulumi.dart';
import '../route_table_route/route_table_route.dart';
import 'route_table_args.dart';

/// Provides a resource to create a VPC routing table.
///
/// > **NOTE on <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span> and <span pulumi-lang-nodejs="`natGatewayId`" pulumi-lang-dotnet="`NatGatewayId`" pulumi-lang-go="`natGatewayId`" pulumi-lang-python="`nat_gateway_id`" pulumi-lang-yaml="`natGatewayId`" pulumi-lang-java="`natGatewayId`">`nat_gateway_id`</span>:** The AWS API is very forgiving with these two
/// attributes and the <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span> resource can be created with a NAT ID specified as a Gateway ID attribute.
/// This _will_ lead to a permanent diff between your configuration and statefile, as the API returns the correct
/// parameters in the returned route table. If you're experiencing constant diffs in your <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span> resources,
/// the first thing to check is whether or not you're specifying a NAT ID instead of a Gateway ID, or vice-versa.
///
/// > **NOTE on <span pulumi-lang-nodejs="`propagatingVgws`" pulumi-lang-dotnet="`PropagatingVgws`" pulumi-lang-go="`propagatingVgws`" pulumi-lang-python="`propagating_vgws`" pulumi-lang-yaml="`propagatingVgws`" pulumi-lang-java="`propagatingVgws`">`propagating_vgws`</span> and the <span pulumi-lang-nodejs="`aws.ec2.VpnGatewayRoutePropagation`" pulumi-lang-dotnet="`aws.ec2.VpnGatewayRoutePropagation`" pulumi-lang-go="`ec2.VpnGatewayRoutePropagation`" pulumi-lang-python="`ec2.VpnGatewayRoutePropagation`" pulumi-lang-yaml="`aws.ec2.VpnGatewayRoutePropagation`" pulumi-lang-java="`aws.ec2.VpnGatewayRoutePropagation`">`aws.ec2.VpnGatewayRoutePropagation`</span> resource:**
/// If the <span pulumi-lang-nodejs="`propagatingVgws`" pulumi-lang-dotnet="`PropagatingVgws`" pulumi-lang-go="`propagatingVgws`" pulumi-lang-python="`propagating_vgws`" pulumi-lang-yaml="`propagatingVgws`" pulumi-lang-java="`propagatingVgws`">`propagating_vgws`</span> argument is present, it's not supported to _also_
/// define route propagations using <span pulumi-lang-nodejs="`aws.ec2.VpnGatewayRoutePropagation`" pulumi-lang-dotnet="`aws.ec2.VpnGatewayRoutePropagation`" pulumi-lang-go="`ec2.VpnGatewayRoutePropagation`" pulumi-lang-python="`ec2.VpnGatewayRoutePropagation`" pulumi-lang-yaml="`aws.ec2.VpnGatewayRoutePropagation`" pulumi-lang-java="`aws.ec2.VpnGatewayRoutePropagation`">`aws.ec2.VpnGatewayRoutePropagation`</span>, since
/// this resource will delete any propagating gateways not explicitly listed in
/// <span pulumi-lang-nodejs="`propagatingVgws`" pulumi-lang-dotnet="`PropagatingVgws`" pulumi-lang-go="`propagatingVgws`" pulumi-lang-python="`propagating_vgws`" pulumi-lang-yaml="`propagatingVgws`" pulumi-lang-java="`propagatingVgws`">`propagating_vgws`</span>. Omit this argument when defining route propagation using
/// the separate resource.
///
/// ## Example Usage
///
/// ### Basic example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.RouteTable("example", {
/// vpcId: exampleAwsVpc.id,
/// routes: [
/// {
/// cidrBlock: "10.0.1.0/24",
/// gatewayId: exampleAwsInternetGateway.id,
/// },
/// {
/// ipv6CidrBlock: "::/0",
/// egressOnlyGatewayId: exampleAwsEgressOnlyInternetGateway.id,
/// },
/// ],
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.RouteTable("example",
/// vpc_id=example_aws_vpc["id"],
/// routes=[
/// {
/// "cidr_block": "10.0.1.0/24",
/// "gateway_id": example_aws_internet_gateway["id"],
/// },
/// {
/// "ipv6_cidr_block": "::/0",
/// "egress_only_gateway_id": example_aws_egress_only_internet_gateway["id"],
/// },
/// ],
/// tags={
/// "Name": "example",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.RouteTable("example", new()
/// {
/// VpcId = exampleAwsVpc.Id,
/// Routes = new[]
/// {
/// new Aws.Ec2.Inputs.RouteTableRouteArgs
/// {
/// CidrBlock = "10.0.1.0/24",
/// GatewayId = exampleAwsInternetGateway.Id,
/// },
/// new Aws.Ec2.Inputs.RouteTableRouteArgs
/// {
/// Ipv6CidrBlock = "::/0",
/// EgressOnlyGatewayId = exampleAwsEgressOnlyInternetGateway.Id,
/// },
/// },
/// Tags =
/// {
/// { "Name", "example" },
/// },
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
/// _, err := ec2.NewRouteTable(ctx, "example", &ec2.RouteTableArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// Routes: ec2.RouteTableRouteArray{
/// &ec2.RouteTableRouteArgs{
/// CidrBlock: pulumi.String("10.0.1.0/24"),
/// GatewayId: pulumi.Any(exampleAwsInternetGateway.Id),
/// },
/// &ec2.RouteTableRouteArgs{
/// Ipv6CidrBlock:       pulumi.String("::/0"),
/// EgressOnlyGatewayId: pulumi.Any(exampleAwsEgressOnlyInternetGateway.Id),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
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
/// import com.pulumi.aws.ec2.RouteTable;
/// import com.pulumi.aws.ec2.RouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.RouteTableRouteArgs;
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
/// var example = new RouteTable("example", RouteTableArgs.builder()
/// .vpcId(exampleAwsVpc.id())
/// .routes(
/// RouteTableRouteArgs.builder()
/// .cidrBlock("10.0.1.0/24")
/// .gatewayId(exampleAwsInternetGateway.id())
/// .build(),
/// RouteTableRouteArgs.builder()
/// .ipv6CidrBlock("::/0")
/// .egressOnlyGatewayId(exampleAwsEgressOnlyInternetGateway.id())
/// .build())
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:RouteTable
/// properties:
/// vpcId: ${exampleAwsVpc.id}
/// routes:
/// - cidrBlock: 10.0.1.0/24
/// gatewayId: ${exampleAwsInternetGateway.id}
/// - ipv6CidrBlock: ::/0
/// egressOnlyGatewayId: ${exampleAwsEgressOnlyInternetGateway.id}
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To subsequently remove all managed routes:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.RouteTable("example", {
/// vpcId: exampleAwsVpc.id,
/// routes: [],
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.RouteTable("example",
/// vpc_id=example_aws_vpc["id"],
/// routes=[],
/// tags={
/// "Name": "example",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.RouteTable("example", new()
/// {
/// VpcId = exampleAwsVpc.Id,
/// Routes = new[] {},
/// Tags =
/// {
/// { "Name", "example" },
/// },
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
/// _, err := ec2.NewRouteTable(ctx, "example", &ec2.RouteTableArgs{
/// VpcId:  pulumi.Any(exampleAwsVpc.Id),
/// Routes: ec2.RouteTableRouteArray{},
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// },
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
/// import com.pulumi.aws.ec2.RouteTable;
/// import com.pulumi.aws.ec2.RouteTableArgs;
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
/// var example = new RouteTable("example", RouteTableArgs.builder()
/// .vpcId(exampleAwsVpc.id())
/// .routes()
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:RouteTable
/// properties:
/// vpcId: ${exampleAwsVpc.id}
/// routes: []
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Adopting an existing local route
///
/// AWS creates certain routes that the AWS provider mostly ignores. You can manage them by importing or adopting them. See Import below for information on importing. This example shows adopting a route and then updating its target.
///
/// First, adopt an existing AWS-created route:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testRouteTable = new aws.ec2.RouteTable("test", {
/// vpcId: test.id,
/// routes: [{
/// cidrBlock: "10.1.0.0/16",
/// gatewayId: "local",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_route_table = aws.ec2.RouteTable("test",
/// vpc_id=test.id,
/// routes=[{
/// "cidr_block": "10.1.0.0/16",
/// "gateway_id": "local",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.Vpc("test", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var testRouteTable = new Aws.Ec2.RouteTable("test", new()
/// {
/// VpcId = test.Id,
/// Routes = new[]
/// {
/// new Aws.Ec2.Inputs.RouteTableRouteArgs
/// {
/// CidrBlock = "10.1.0.0/16",
/// GatewayId = "local",
/// },
/// },
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
/// test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewRouteTable(ctx, "test", &ec2.RouteTableArgs{
/// VpcId: test.ID(),
/// Routes: ec2.RouteTableRouteArray{
/// &ec2.RouteTableRouteArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// GatewayId: pulumi.String("local"),
/// },
/// },
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
/// import com.pulumi.aws.ec2.RouteTable;
/// import com.pulumi.aws.ec2.RouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.RouteTableRouteArgs;
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
/// var test = new Vpc("test", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var testRouteTable = new RouteTable("testRouteTable", RouteTableArgs.builder()
/// .vpcId(test.id())
/// .routes(RouteTableRouteArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .gatewayId("local")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// testRouteTable:
/// type: aws:ec2:RouteTable
/// name: test
/// properties:
/// vpcId: ${test.id}
/// routes:
/// - cidrBlock: 10.1.0.0/16
/// gatewayId: local
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Next, update the target of the route:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testSubnet = new aws.ec2.Subnet("test", {
/// cidrBlock: "10.1.1.0/24",
/// vpcId: test.id,
/// });
/// const testNetworkInterface = new aws.ec2.NetworkInterface("test", {subnetId: testSubnet.id});
/// const testRouteTable = new aws.ec2.RouteTable("test", {
/// vpcId: test.id,
/// routes: [{
/// cidrBlock: test.cidrBlock,
/// networkInterfaceId: testNetworkInterface.id,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_subnet = aws.ec2.Subnet("test",
/// cidr_block="10.1.1.0/24",
/// vpc_id=test.id)
/// test_network_interface = aws.ec2.NetworkInterface("test", subnet_id=test_subnet.id)
/// test_route_table = aws.ec2.RouteTable("test",
/// vpc_id=test.id,
/// routes=[{
/// "cidr_block": test.cidr_block,
/// "network_interface_id": test_network_interface.id,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Ec2.Vpc("test", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var testSubnet = new Aws.Ec2.Subnet("test", new()
/// {
/// CidrBlock = "10.1.1.0/24",
/// VpcId = test.Id,
/// });
///
/// var testNetworkInterface = new Aws.Ec2.NetworkInterface("test", new()
/// {
/// SubnetId = testSubnet.Id,
/// });
///
/// var testRouteTable = new Aws.Ec2.RouteTable("test", new()
/// {
/// VpcId = test.Id,
/// Routes = new[]
/// {
/// new Aws.Ec2.Inputs.RouteTableRouteArgs
/// {
/// CidrBlock = test.CidrBlock,
/// NetworkInterfaceId = testNetworkInterface.Id,
/// },
/// },
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
/// test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// testSubnet, err := ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// CidrBlock: pulumi.String("10.1.1.0/24"),
/// VpcId:     test.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// testNetworkInterface, err := ec2.NewNetworkInterface(ctx, "test", &ec2.NetworkInterfaceArgs{
/// SubnetId: testSubnet.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewRouteTable(ctx, "test", &ec2.RouteTableArgs{
/// VpcId: test.ID(),
/// Routes: ec2.RouteTableRouteArray{
/// &ec2.RouteTableRouteArgs{
/// CidrBlock:          test.CidrBlock,
/// NetworkInterfaceId: testNetworkInterface.ID(),
/// },
/// },
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
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.NetworkInterface;
/// import com.pulumi.aws.ec2.NetworkInterfaceArgs;
/// import com.pulumi.aws.ec2.RouteTable;
/// import com.pulumi.aws.ec2.RouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.RouteTableRouteArgs;
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
/// var test = new Vpc("test", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var testSubnet = new Subnet("testSubnet", SubnetArgs.builder()
/// .cidrBlock("10.1.1.0/24")
/// .vpcId(test.id())
/// .build());
///
/// var testNetworkInterface = new NetworkInterface("testNetworkInterface", NetworkInterfaceArgs.builder()
/// .subnetId(testSubnet.id())
/// .build());
///
/// var testRouteTable = new RouteTable("testRouteTable", RouteTableArgs.builder()
/// .vpcId(test.id())
/// .routes(RouteTableRouteArgs.builder()
/// .cidrBlock(test.cidrBlock())
/// .networkInterfaceId(testNetworkInterface.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// testRouteTable:
/// type: aws:ec2:RouteTable
/// name: test
/// properties:
/// vpcId: ${test.id}
/// routes:
/// - cidrBlock: ${test.cidrBlock}
/// networkInterfaceId: ${testNetworkInterface.id}
/// testSubnet:
/// type: aws:ec2:Subnet
/// name: test
/// properties:
/// cidrBlock: 10.1.1.0/24
/// vpcId: ${test.id}
/// testNetworkInterface:
/// type: aws:ec2:NetworkInterface
/// name: test
/// properties:
/// subnetId: ${testSubnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The target could then be updated again back to <span pulumi-lang-nodejs="`local`" pulumi-lang-dotnet="`Local`" pulumi-lang-go="`local`" pulumi-lang-python="`local`" pulumi-lang-yaml="`local`" pulumi-lang-java="`local`">`local`</span>.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the routing table.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route Tables using the route table <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTable:RouteTable public_rt rtb-4e616f6d69
/// ```
class RouteTable extends CustomResource {
  /// The ARN of the route table.
  late final Output<String> arn;

  /// The ID of the AWS account that owns the route table.
  late final Output<String> ownerId;

  /// A list of virtual gateways for propagation.
  late final Output<List<String>> propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of route objects. Their keys are documented below.
  /// This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above.
  ///
  /// > **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (<span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span>) and a Route Table resource with routes defined in-line (<span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span>). At this time you cannot use a <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span> inline <span pulumi-lang-nodejs="`route`" pulumi-lang-dotnet="`Route`" pulumi-lang-go="`route`" pulumi-lang-python="`route`" pulumi-lang-yaml="`route`" pulumi-lang-java="`route`">`route`</span> blocks in conjunction with any <span pulumi-lang-nodejs="`aws.ec2.Route`" pulumi-lang-dotnet="`aws.ec2.Route`" pulumi-lang-go="`ec2.Route`" pulumi-lang-python="`ec2.Route`" pulumi-lang-yaml="`aws.ec2.Route`" pulumi-lang-java="`aws.ec2.Route`">`aws.ec2.Route`</span> resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  late final Output<List<RouteTableRoute>> routes;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID.
  late final Output<String> vpcId;

  RouteTable(
    String name, {
    RouteTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTable:RouteTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.propagatingVgws = Output.createUnknown<List<String>>();
    this.region = Output.createUnknown<String>();
    this.routes = Output.createUnknown<List<RouteTableRoute>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
