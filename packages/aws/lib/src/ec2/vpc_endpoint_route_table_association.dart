import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_route_table_association_args.dart';

/// Manages a VPC Endpoint Route Table Association
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpointRouteTableAssociation("example", {
///     routeTableId: exampleAwsRouteTable.id,
///     vpcEndpointId: exampleAwsVpcEndpoint.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpointRouteTableAssociation("example",
///     route_table_id=example_aws_route_table["id"],
///     vpc_endpoint_id=example_aws_vpc_endpoint["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcEndpointRouteTableAssociation("example", new()
///     {
///         RouteTableId = exampleAwsRouteTable.Id,
///         VpcEndpointId = exampleAwsVpcEndpoint.Id,
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
/// 		_, err := ec2.NewVpcEndpointRouteTableAssociation(ctx, "example", &ec2.VpcEndpointRouteTableAssociationArgs{
/// 			RouteTableId:  pulumi.Any(exampleAwsRouteTable.Id),
/// 			VpcEndpointId: pulumi.Any(exampleAwsVpcEndpoint.Id),
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
/// import com.pulumi.aws.ec2.VpcEndpointRouteTableAssociation;
/// import com.pulumi.aws.ec2.VpcEndpointRouteTableAssociationArgs;
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
///         var example = new VpcEndpointRouteTableAssociation("example", VpcEndpointRouteTableAssociationArgs.builder()
///             .routeTableId(exampleAwsRouteTable.id())
///             .vpcEndpointId(exampleAwsVpcEndpoint.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcEndpointRouteTableAssociation
///     properties:
///       routeTableId: ${exampleAwsRouteTable.id}
///       vpcEndpointId: ${exampleAwsVpcEndpoint.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Route Table Associations using `vpc_endpoint_id` together with `route_table_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointRouteTableAssociation:VpcEndpointRouteTableAssociation example vpce-aaaaaaaa/rtb-bbbbbbbb
/// ```
class VpcEndpointRouteTableAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  late final pulumi.Output<String> routeTableId;

  /// Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  late final pulumi.Output<String> vpcEndpointId;

  /// Creates a new [VpcEndpointRouteTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointRouteTableAssociation]. {@macro pulumi_ec2_vpc_endpoint_route_table_association_vpc_endpoint_route_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointRouteTableAssociation(
    String name, {
    VpcEndpointRouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcEndpointRouteTableAssociation:VpcEndpointRouteTableAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
