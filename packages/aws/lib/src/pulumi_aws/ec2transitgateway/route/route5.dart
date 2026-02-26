import 'package:pulumi/pulumi.dart';
import 'route_args5.dart';

/// Manages an EC2 Transit Gateway Route.
///
/// ## Example Usage
///
/// ### Standard usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.Route("example", {
/// destinationCidrBlock: "0.0.0.0/0",
/// transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
/// transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.Route("example",
/// destination_cidr_block="0.0.0.0/0",
/// transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
/// transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.Route("example", new()
/// {
/// DestinationCidrBlock = "0.0.0.0/0",
/// TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
/// TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewRoute(ctx, "example", &ec2transitgateway.RouteArgs{
/// DestinationCidrBlock:       pulumi.String("0.0.0.0/0"),
/// TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Route("example", RouteArgs.builder()
/// .destinationCidrBlock("0.0.0.0/0")
/// .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
/// .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:Route
/// properties:
/// destinationCidrBlock: 0.0.0.0/0
/// transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
/// transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Blackhole route
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.Route("example", {
/// destinationCidrBlock: "0.0.0.0/0",
/// blackhole: true,
/// transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.Route("example",
/// destination_cidr_block="0.0.0.0/0",
/// blackhole=True,
/// transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.Route("example", new()
/// {
/// DestinationCidrBlock = "0.0.0.0/0",
/// Blackhole = true,
/// TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewRoute(ctx, "example", &ec2transitgateway.RouteArgs{
/// DestinationCidrBlock:       pulumi.String("0.0.0.0/0"),
/// Blackhole:                  pulumi.Bool(true),
/// TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Route("example", RouteArgs.builder()
/// .destinationCidrBlock("0.0.0.0/0")
/// .blackhole(true)
/// .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:Route
/// properties:
/// destinationCidrBlock: 0.0.0.0/0
/// blackhole: true
/// transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.Route`" pulumi-lang-dotnet="`aws.ec2transitgateway.Route`" pulumi-lang-go="`ec2transitgateway.Route`" pulumi-lang-python="`ec2transitgateway.Route`" pulumi-lang-yaml="`aws.ec2transitgateway.Route`" pulumi-lang-java="`aws.ec2transitgateway.Route`">`aws.ec2transitgateway.Route`</span> using the EC2 Transit Gateway Route Table, an underscore, and the destination. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/route:Route example tgw-rtb-12345678_0.0.0.0/0
/// ```
class Route5 extends CustomResource {
  /// Indicates whether to drop traffic that matches this route (default to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>).
  late final Output<bool?> blackhole;

  /// IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  late final Output<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of EC2 Transit Gateway Attachment (required if <span pulumi-lang-nodejs="`blackhole`" pulumi-lang-dotnet="`Blackhole`" pulumi-lang-go="`blackhole`" pulumi-lang-python="`blackhole`" pulumi-lang-yaml="`blackhole`" pulumi-lang-java="`blackhole`">`blackhole`</span> is set to false).
  late final Output<String?> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  late final Output<String> transitGatewayRouteTableId;

  Route5(
    String name, {
    RouteArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/route:Route',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blackhole = registerOutput<bool?>('blackhole');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId =
        registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
