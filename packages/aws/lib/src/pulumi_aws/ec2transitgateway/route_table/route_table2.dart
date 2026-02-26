import 'package:pulumi/pulumi.dart';
import 'route_table_args2.dart';

/// Manages an EC2 Transit Gateway Route Table.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.RouteTable("example", {transitGatewayId: exampleAwsEc2TransitGateway.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.RouteTable("example", transit_gateway_id=example_aws_ec2_transit_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.RouteTable("example", new()
/// {
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
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
/// _, err := ec2transitgateway.NewRouteTable(ctx, "example", &ec2transitgateway.RouteTableArgs{
/// TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
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
/// import com.pulumi.aws.ec2transitgateway.RouteTable;
/// import com.pulumi.aws.ec2transitgateway.RouteTableArgs;
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
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:RouteTable
/// properties:
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTable`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTable`" pulumi-lang-go="`ec2transitgateway.RouteTable`" pulumi-lang-python="`ec2transitgateway.RouteTable`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTable`" pulumi-lang-java="`aws.ec2transitgateway.RouteTable`">`aws.ec2transitgateway.RouteTable`</span> using the EC2 Transit Gateway Route Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/routeTable:RouteTable example tgw-rtb-12345678
/// ```
class RouteTable2 extends CustomResource {
  /// EC2 Transit Gateway Route Table Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// Boolean whether this is the default association route table for the EC2 Transit Gateway.
  late final Output<bool> defaultAssociationRouteTable;

  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway.
  late final Output<bool> defaultPropagationRouteTable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  RouteTable2(
    String name, {
    RouteTableArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTable:RouteTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultAssociationRouteTable =
        registerOutput<bool>('defaultAssociationRouteTable');
    this.defaultPropagationRouteTable =
        registerOutput<bool>('defaultPropagationRouteTable');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
