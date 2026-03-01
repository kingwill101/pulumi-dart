import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_state.dart';

/// Manages an EC2 Transit Gateway Route.
///
/// ## Example Usage
///
/// ### Standard usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.Route("example", {
///     destinationCidrBlock: "0.0.0.0/0",
///     transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
///     transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.Route("example",
///     destination_cidr_block="0.0.0.0/0",
///     transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
///     transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.Route("example", new()
///     {
///         DestinationCidrBlock = "0.0.0.0/0",
///         TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewRoute(ctx, "example", &ec2transitgateway.RouteArgs{
/// 			DestinationCidrBlock:       pulumi.String("0.0.0.0/0"),
/// 			TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// 			TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// import com.pulumi.aws.ec2transitgateway.Route;
/// import com.pulumi.aws.ec2transitgateway.RouteArgs;
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
///         var example = new Route("example", RouteArgs.builder()
///             .destinationCidrBlock("0.0.0.0/0")
///             .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:Route
///     properties:
///       destinationCidrBlock: 0.0.0.0/0
///       transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
///       transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
///
///
/// ### Blackhole route
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.Route("example", {
///     destinationCidrBlock: "0.0.0.0/0",
///     blackhole: true,
///     transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.Route("example",
///     destination_cidr_block="0.0.0.0/0",
///     blackhole=True,
///     transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.Route("example", new()
///     {
///         DestinationCidrBlock = "0.0.0.0/0",
///         Blackhole = true,
///         TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewRoute(ctx, "example", &ec2transitgateway.RouteArgs{
/// 			DestinationCidrBlock:       pulumi.String("0.0.0.0/0"),
/// 			Blackhole:                  pulumi.Bool(true),
/// 			TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// import com.pulumi.aws.ec2transitgateway.Route;
/// import com.pulumi.aws.ec2transitgateway.RouteArgs;
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
///         var example = new Route("example", RouteArgs.builder()
///             .destinationCidrBlock("0.0.0.0/0")
///             .blackhole(true)
///             .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:Route
///     properties:
///       destinationCidrBlock: 0.0.0.0/0
///       blackhole: true
///       transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.Route` using the EC2 Transit Gateway Route Table, an underscore, and the destination. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/route:Route example tgw-rtb-12345678_0.0.0.0/0
/// ```
class Route extends pulumi.CustomResource {
  /// Indicates whether to drop traffic that matches this route (default to `false`).
  late final pulumi.Output<bool?> blackhole;
  /// IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  late final pulumi.Output<String> destinationCidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of EC2 Transit Gateway Attachment (required if `blackhole` is set to false).
  late final pulumi.Output<String?> transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  late final pulumi.Output<String> transitGatewayRouteTableId;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_ec2transitgateway_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blackhole = registerOutput<bool?>('blackhole');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId = registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
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
          'aws:ec2transitgateway/route:Route',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blackhole = registerOutput<bool?>('blackhole');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId = registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId = registerOutput<String>('transitGatewayRouteTableId');
  }
}
