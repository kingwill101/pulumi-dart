import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_args.dart';
import 'route_table_state.dart';

/// Manages an EC2 Transit Gateway Route Table.
///
/// ## Example Usage
///
///
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
///     var example = new Aws.Ec2TransitGateway.RouteTable("example", new()
///     {
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
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
/// 		_, err := ec2transitgateway.NewRouteTable(ctx, "example", &ec2transitgateway.RouteTableArgs{
/// 			TransitGatewayId: pulumi.Any(exampleAwsEc2TransitGateway.Id),
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
/// resource "aws_ec2transitgateway_routetable" "example" {
///   transit_gateway_id = exampleAwsEc2TransitGateway.id
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
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:RouteTable
///     properties:
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.RouteTable` using the EC2 Transit Gateway Route Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/routeTable:RouteTable example tgw-rtb-12345678
/// ```
class RouteTable extends pulumi.CustomResource {
  /// EC2 Transit Gateway Route Table Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;
  /// Boolean whether this is the default association route table for the EC2 Transit Gateway.
  late final pulumi.Output<bool> defaultAssociationRouteTable;
  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway.
  late final pulumi.Output<bool> defaultPropagationRouteTable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  /// Creates a new [RouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTable]. {@macro pulumi_ec2transitgateway_route_table_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTable(
    String name, {
    RouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultAssociationRouteTable = registerOutput<bool>('defaultAssociationRouteTable');
    defaultPropagationRouteTable = registerOutput<bool>('defaultPropagationRouteTable');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayId = registerOutput<String>('transitGatewayId');
  }

  /// Gets an existing [RouteTable] resource's state with the given [name] and [id].
  static RouteTable get(
    String name,
    pulumi.Input<String> id, {
    RouteTableState? state,
  }) {
    return RouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    defaultAssociationRouteTable = registerOutput<bool>('defaultAssociationRouteTable');
    defaultPropagationRouteTable = registerOutput<bool>('defaultPropagationRouteTable');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
