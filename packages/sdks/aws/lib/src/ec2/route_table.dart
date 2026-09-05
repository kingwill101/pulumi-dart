import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_args.dart';
import 'route_table_route.dart';
import 'route_table_state.dart';

/// Provides a resource to create a VPC routing table.
///
/// &gt; **NOTE on `gatewayId` and `natGatewayId`:** The AWS API is very forgiving with these two
/// attributes and the `aws.ec2.RouteTable` resource can be created with a NAT ID specified as a Gateway ID attribute.
/// This _will_ lead to a permanent diff between your configuration and statefile, as the API returns the correct
/// parameters in the returned route table. If you're experiencing constant diffs in your `aws.ec2.RouteTable` resources,
/// the first thing to check is whether or not you're specifying a NAT ID instead of a Gateway ID, or vice-versa.
///
/// &gt; **NOTE on `propagatingVgws` and the `aws.ec2.VpnGatewayRoutePropagation` resource:**
/// If the `propagatingVgws` argument is present, it's not supported to _also_
/// define route propagations using `aws.ec2.VpnGatewayRoutePropagation`, since
/// this resource will delete any propagating gateways not explicitly listed in
/// `propagatingVgws`. Omit this argument when defining route propagation using
/// the separate resource.
///
/// ## Example Usage
///
/// ### Basic example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.RouteTable("example", {
///     routes: [
///         {
///             cidrBlock: "10.0.1.0/24",
///             gatewayId: exampleAwsInternetGateway.id,
///         },
///         {
///             ipv6CidrBlock: "::/0",
///             egressOnlyGatewayId: exampleAwsEgressOnlyInternetGateway.id,
///         },
///     ],
///     vpcId: exampleAwsVpc.id,
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.RouteTable("example",
///     routes=[
///         {
///             "cidr_block": "10.0.1.0/24",
///             "gateway_id": example_aws_internet_gateway["id"],
///         },
///         {
///             "ipv6_cidr_block": "::/0",
///             "egress_only_gateway_id": example_aws_egress_only_internet_gateway["id"],
///         },
///     ],
///     vpc_id=example_aws_vpc["id"],
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.RouteTable("example", new()
///     {
///         Routes = new[]
///         {
///             new Aws.Ec2.Inputs.RouteTableRouteArgs
///             {
///                 CidrBlock = "10.0.1.0/24",
///                 GatewayId = exampleAwsInternetGateway.Id,
///             },
///             new Aws.Ec2.Inputs.RouteTableRouteArgs
///             {
///                 Ipv6CidrBlock = "::/0",
///                 EgressOnlyGatewayId = exampleAwsEgressOnlyInternetGateway.Id,
///             },
///         },
///         VpcId = exampleAwsVpc.Id,
///         Tags =
///         {
///             { "Name", "example" },
///         },
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
/// 		_, err := ec2.NewRouteTable(ctx, "example", &ec2.RouteTableArgs{
/// 			Routes: ec2.RouteTableRouteArray{
/// 				&ec2.RouteTableRouteArgs{
/// 					CidrBlock: pulumi.String("10.0.1.0/24"),
/// 					GatewayId: pulumi.Any(exampleAwsInternetGateway.Id),
/// 				},
/// 				&ec2.RouteTableRouteArgs{
/// 					Ipv6CidrBlock:       pulumi.String("::/0"),
/// 					EgressOnlyGatewayId: pulumi.Any(exampleAwsEgressOnlyInternetGateway.Id),
/// 				},
/// 			},
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_routetable" "example" {
///   routes {
///     cidr_block = "10.0.1.0/24"
///     gateway_id = exampleAwsInternetGateway.id
///   }
///   routes {
///     ipv6_cidr_block        = "::/0"
///     egress_only_gateway_id = exampleAwsEgressOnlyInternetGateway.id
///   }
///   vpc_id = exampleAwsVpc.id
///   tags = {
///     "Name" = "example"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new RouteTable("example", RouteTableArgs.builder()
///             .routes(
///                 RouteTableRouteArgs.builder()
///                     .cidrBlock("10.0.1.0/24")
///                     .gatewayId(exampleAwsInternetGateway.id())
///                     .build(),
///                 RouteTableRouteArgs.builder()
///                     .ipv6CidrBlock("::/0")
///                     .egressOnlyGatewayId(exampleAwsEgressOnlyInternetGateway.id())
///                     .build())
///             .vpcId(exampleAwsVpc.id())
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:RouteTable
///     properties:
///       routes:
///         - cidrBlock: 10.0.1.0/24
///           gatewayId: ${exampleAwsInternetGateway.id}
///         - ipv6CidrBlock: ::/0
///           egressOnlyGatewayId: ${exampleAwsEgressOnlyInternetGateway.id}
///       vpcId: ${exampleAwsVpc.id}
///       tags:
///         Name: example
/// ```
///
///
/// To subsequently remove all managed routes:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.RouteTable("example", {
///     vpcId: exampleAwsVpc.id,
///     routes: [],
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.RouteTable("example",
///     vpc_id=example_aws_vpc["id"],
///     routes=[],
///     tags={
///         "Name": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.RouteTable("example", new()
///     {
///         VpcId = exampleAwsVpc.Id,
///         Routes = new[] {},
///         Tags =
///         {
///             { "Name", "example" },
///         },
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
/// 		_, err := ec2.NewRouteTable(ctx, "example", &ec2.RouteTableArgs{
/// 			VpcId:  pulumi.Any(exampleAwsVpc.Id),
/// 			Routes: ec2.RouteTableRouteArray{},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_routetable" "example" {
///   vpc_id = exampleAwsVpc.id
///   tags = {
///     "Name" = "example"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new RouteTable("example", RouteTableArgs.builder()
///             .vpcId(exampleAwsVpc.id())
///             .routes()
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:RouteTable
///     properties:
///       vpcId: ${exampleAwsVpc.id}
///       routes: []
///       tags:
///         Name: example
/// ```
///
///
/// ### Adopting an existing local route
///
/// AWS creates certain routes that the AWS provider mostly ignores. You can manage them by importing or adopting them. See Import below for information on importing. This example shows adopting a route and then updating its target.
///
/// First, adopt an existing AWS-created route:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testRouteTable = new aws.ec2.RouteTable("test", {
///     routes: [{
///         cidrBlock: "10.1.0.0/16",
///         gatewayId: "local",
///     }],
///     vpcId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_route_table = aws.ec2.RouteTable("test",
///     routes=[{
///         "cidr_block": "10.1.0.0/16",
///         "gateway_id": "local",
///     }],
///     vpc_id=test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.Vpc("test", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var testRouteTable = new Aws.Ec2.RouteTable("test", new()
///     {
///         Routes = new[]
///         {
///             new Aws.Ec2.Inputs.RouteTableRouteArgs
///             {
///                 CidrBlock = "10.1.0.0/16",
///                 GatewayId = "local",
///             },
///         },
///         VpcId = test.Id,
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
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewRouteTable(ctx, "test", &ec2.RouteTableArgs{
/// 			Routes: ec2.RouteTableRouteArray{
/// 				&ec2.RouteTableRouteArgs{
/// 					CidrBlock: pulumi.String("10.1.0.0/16"),
/// 					GatewayId: pulumi.String("local"),
/// 				},
/// 			},
/// 			VpcId: test.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "test" {
///   cidr_block = "10.1.0.0/16"
/// }
/// resource "aws_ec2_routetable" "test" {
///   routes {
///     cidr_block = "10.1.0.0/16"
///     gateway_id = "local"
///   }
///   vpc_id = aws_ec2_vpc.test.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var test = new Vpc("test", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var testRouteTable = new RouteTable("testRouteTable", RouteTableArgs.builder()
///             .routes(RouteTableRouteArgs.builder()
///                 .cidrBlock("10.1.0.0/16")
///                 .gatewayId("local")
///                 .build())
///             .vpcId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///   testRouteTable:
///     type: aws:ec2:RouteTable
///     name: test
///     properties:
///       routes:
///         - cidrBlock: 10.1.0.0/16
///           gatewayId: local
///       vpcId: ${test.id}
/// ```
///
///
/// Next, update the target of the route:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.1.0.0/16"});
/// const testSubnet = new aws.ec2.Subnet("test", {
///     cidrBlock: "10.1.1.0/24",
///     vpcId: test.id,
/// });
/// const testNetworkInterface = new aws.ec2.NetworkInterface("test", {subnetId: testSubnet.id});
/// const testRouteTable = new aws.ec2.RouteTable("test", {
///     routes: [{
///         cidrBlock: test.cidrBlock,
///         networkInterfaceId: testNetworkInterface.id,
///     }],
///     vpcId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_subnet = aws.ec2.Subnet("test",
///     cidr_block="10.1.1.0/24",
///     vpc_id=test.id)
/// test_network_interface = aws.ec2.NetworkInterface("test", subnet_id=test_subnet.id)
/// test_route_table = aws.ec2.RouteTable("test",
///     routes=[{
///         "cidr_block": test.cidr_block,
///         "network_interface_id": test_network_interface.id,
///     }],
///     vpc_id=test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.Vpc("test", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var testSubnet = new Aws.Ec2.Subnet("test", new()
///     {
///         CidrBlock = "10.1.1.0/24",
///         VpcId = test.Id,
///     });
///
///     var testNetworkInterface = new Aws.Ec2.NetworkInterface("test", new()
///     {
///         SubnetId = testSubnet.Id,
///     });
///
///     var testRouteTable = new Aws.Ec2.RouteTable("test", new()
///     {
///         Routes = new[]
///         {
///             new Aws.Ec2.Inputs.RouteTableRouteArgs
///             {
///                 CidrBlock = test.CidrBlock,
///                 NetworkInterfaceId = testNetworkInterface.Id,
///             },
///         },
///         VpcId = test.Id,
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
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSubnet, err := ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// 			CidrBlock: pulumi.String("10.1.1.0/24"),
/// 			VpcId:     test.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testNetworkInterface, err := ec2.NewNetworkInterface(ctx, "test", &ec2.NetworkInterfaceArgs{
/// 			SubnetId: testSubnet.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewRouteTable(ctx, "test", &ec2.RouteTableArgs{
/// 			Routes: ec2.RouteTableRouteArray{
/// 				&ec2.RouteTableRouteArgs{
/// 					CidrBlock:          test.CidrBlock,
/// 					NetworkInterfaceId: testNetworkInterface.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			VpcId: test.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "test" {
///   cidr_block = "10.1.0.0/16"
/// }
/// resource "aws_ec2_routetable" "test" {
///   routes {
///     cidr_block           = aws_ec2_vpc.test.cidr_block
///     network_interface_id = aws_ec2_networkinterface.test.id
///   }
///   vpc_id = aws_ec2_vpc.test.id
/// }
/// resource "aws_ec2_subnet" "test" {
///   cidr_block = "10.1.1.0/24"
///   vpc_id     = aws_ec2_vpc.test.id
/// }
/// resource "aws_ec2_networkinterface" "test" {
///   subnet_id = aws_ec2_subnet.test.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var test = new Vpc("test", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var testSubnet = new Subnet("testSubnet", SubnetArgs.builder()
///             .cidrBlock("10.1.1.0/24")
///             .vpcId(test.id())
///             .build());
///
///         var testNetworkInterface = new NetworkInterface("testNetworkInterface", NetworkInterfaceArgs.builder()
///             .subnetId(testSubnet.id())
///             .build());
///
///         var testRouteTable = new RouteTable("testRouteTable", RouteTableArgs.builder()
///             .routes(RouteTableRouteArgs.builder()
///                 .cidrBlock(test.cidrBlock())
///                 .networkInterfaceId(testNetworkInterface.id())
///                 .build())
///             .vpcId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///   testRouteTable:
///     type: aws:ec2:RouteTable
///     name: test
///     properties:
///       routes:
///         - cidrBlock: ${test.cidrBlock}
///           networkInterfaceId: ${testNetworkInterface.id}
///       vpcId: ${test.id}
///   testSubnet:
///     type: aws:ec2:Subnet
///     name: test
///     properties:
///       cidrBlock: 10.1.1.0/24
///       vpcId: ${test.id}
///   testNetworkInterface:
///     type: aws:ec2:NetworkInterface
///     name: test
///     properties:
///       subnetId: ${testSubnet.id}
/// ```
///
///
/// The target could then be updated again back to `local`.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the routing table.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route Tables using the route table `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTable:RouteTable public_rt rtb-4e616f6d69
/// ```
class RouteTable extends pulumi.CustomResource {
  /// The ARN of the route table.
  late final pulumi.Output<String> arn;
  /// The ID of the AWS account that owns the route table.
  late final pulumi.Output<String> ownerId;
  /// A list of virtual gateways for propagation.
  late final pulumi.Output<List<String>> propagatingVgws;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of route objects. Their keys are documented below.
  /// This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above.
  ///
  /// &gt; **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (`aws.ec2.Route`) and a Route Table resource with routes defined in-line (`aws.ec2.RouteTable`). At this time you cannot use a `aws.ec2.RouteTable` inline `route` blocks in conjunction with any `aws.ec2.Route` resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  late final pulumi.Output<List<RouteTableRoute>> routes;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VPC ID.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [RouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTable]. {@macro pulumi_ec2_route_table_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTable(
    String name, {
    RouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    ownerId = registerOutput<String>('ownerId');
    propagatingVgws = registerOutput<List<String>>('propagatingVgws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    routes = registerOutput<List<RouteTableRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteTableRoute>(guardedValue, (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [RouteTable] resource's state with the given [name] and [id].
  static RouteTable get(
    String name,
    pulumi.Input<String> id, {
    RouteTableState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    ownerId = registerOutput<String>('ownerId');
    propagatingVgws = registerOutput<List<String>>('propagatingVgws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    routes = registerOutput<List<RouteTableRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteTableRoute>(guardedValue, (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [RouteTable] resource.
  RouteTable.reference(String urn)
    : super(
        'aws:ec2/routeTable:RouteTable',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    ownerId = registerOutput<String>('ownerId');
    propagatingVgws = registerOutput<List<String>>('propagatingVgws', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    routes = registerOutput<List<RouteTableRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteTableRoute>(guardedValue, (value) => RouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
