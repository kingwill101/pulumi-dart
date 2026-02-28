import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_args.dart';
import 'route_table_route.dart';

/// Provides a resource to create a VPC routing table.
///
/// > **NOTE on `gateway_id` and `nat_gateway_id`:** The AWS API is very forgiving with these two
/// attributes and the `aws.ec2.RouteTable` resource can be created with a NAT ID specified as a Gateway ID attribute.
/// This _will_ lead to a permanent diff between your configuration and statefile, as the API returns the correct
/// parameters in the returned route table. If you're experiencing constant diffs in your `aws.ec2.RouteTable` resources,
/// the first thing to check is whether or not you're specifying a NAT ID instead of a Gateway ID, or vice-versa.
///
/// > **NOTE on `propagating_vgws` and the `aws.ec2.VpnGatewayRoutePropagation` resource:**
/// If the `propagating_vgws` argument is present, it's not supported to _also_
/// define route propagations using `aws.ec2.VpnGatewayRoutePropagation`, since
/// this resource will delete any propagating gateways not explicitly listed in
/// `propagating_vgws`. Omit this argument when defining route propagation using
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
///     vpcId: exampleAwsVpc.id,
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
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RouteTable("example", RouteTableArgs.builder()
///             .vpcId(exampleAwsVpc.id())
///             .routes(
///                 RouteTableRouteArgs.builder()
///                     .cidrBlock("10.0.1.0/24")
///                     .gatewayId(exampleAwsInternetGateway.id())
///                     .build(),
///                 RouteTableRouteArgs.builder()
///                     .ipv6CidrBlock("::/0")
///                     .egressOnlyGatewayId(exampleAwsEgressOnlyInternetGateway.id())
///                     .build())
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
///       routes:
///         - cidrBlock: 10.0.1.0/24
///           gatewayId: ${exampleAwsInternetGateway.id}
///         - ipv6CidrBlock: ::/0
///           egressOnlyGatewayId: ${exampleAwsEgressOnlyInternetGateway.id}
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
///     vpcId: test.id,
///     routes: [{
///         cidrBlock: "10.1.0.0/16",
///         gatewayId: "local",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.1.0.0/16")
/// test_route_table = aws.ec2.RouteTable("test",
///     vpc_id=test.id,
///     routes=[{
///         "cidr_block": "10.1.0.0/16",
///         "gateway_id": "local",
///     }])
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
///         VpcId = test.Id,
///         Routes = new[]
///         {
///             new Aws.Ec2.Inputs.RouteTableRouteArgs
///             {
///                 CidrBlock = "10.1.0.0/16",
///                 GatewayId = "local",
///             },
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
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewRouteTable(ctx, "test", &ec2.RouteTableArgs{
/// 			VpcId: test.ID(),
/// 			Routes: ec2.RouteTableRouteArray{
/// 				&ec2.RouteTableRouteArgs{
/// 					CidrBlock: pulumi.String("10.1.0.0/16"),
/// 					GatewayId: pulumi.String("local"),
/// 				},
/// 			},
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
///             .vpcId(test.id())
///             .routes(RouteTableRouteArgs.builder()
///                 .cidrBlock("10.1.0.0/16")
///                 .gatewayId("local")
///                 .build())
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
///       vpcId: ${test.id}
///       routes:
///         - cidrBlock: 10.1.0.0/16
///           gatewayId: local
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
///     vpcId: test.id,
///     routes: [{
///         cidrBlock: test.cidrBlock,
///         networkInterfaceId: testNetworkInterface.id,
///     }],
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
///     vpc_id=test.id,
///     routes=[{
///         "cidr_block": test.cidr_block,
///         "network_interface_id": test_network_interface.id,
///     }])
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
///         VpcId = test.Id,
///         Routes = new[]
///         {
///             new Aws.Ec2.Inputs.RouteTableRouteArgs
///             {
///                 CidrBlock = test.CidrBlock,
///                 NetworkInterfaceId = testNetworkInterface.Id,
///             },
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
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSubnet, err := ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// 			CidrBlock: pulumi.String("10.1.1.0/24"),
/// 			VpcId:     test.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testNetworkInterface, err := ec2.NewNetworkInterface(ctx, "test", &ec2.NetworkInterfaceArgs{
/// 			SubnetId: testSubnet.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewRouteTable(ctx, "test", &ec2.RouteTableArgs{
/// 			VpcId: test.ID(),
/// 			Routes: ec2.RouteTableRouteArray{
/// 				&ec2.RouteTableRouteArgs{
/// 					CidrBlock:          test.CidrBlock,
/// 					NetworkInterfaceId: testNetworkInterface.ID(),
/// 				},
/// 			},
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
///             .vpcId(test.id())
///             .routes(RouteTableRouteArgs.builder()
///                 .cidrBlock(test.cidrBlock())
///                 .networkInterfaceId(testNetworkInterface.id())
///                 .build())
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
///       vpcId: ${test.id}
///       routes:
///         - cidrBlock: ${test.cidrBlock}
///           networkInterfaceId: ${testNetworkInterface.id}
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
/// * `account_id` (String) AWS Account where this resource is managed.
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
  /// > **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (`aws.ec2.Route`) and a Route Table resource with routes defined in-line (`aws.ec2.RouteTable`). At this time you cannot use a `aws.ec2.RouteTable` inline `route` blocks in conjunction with any `aws.ec2.Route` resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  late final pulumi.Output<List<RouteTableRoute>> routes;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.propagatingVgws = registerOutput<List<String>>('propagatingVgws');
    this.region = registerOutput<String>('region');
    this.routes = registerOutput<List<RouteTableRoute>>('routes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
