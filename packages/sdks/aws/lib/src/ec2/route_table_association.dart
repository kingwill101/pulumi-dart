import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_association_args.dart';
import 'route_table_association_state.dart';

/// Provides a resource to create an association between a route table and a subnet or a route table and an
/// internet gateway or virtual private gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.RouteTableAssociation("example", {
///     subnetId: exampleAwsSubnet.id,
///     routeTableId: exampleAwsRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.RouteTableAssociation("example",
///     subnet_id=example_aws_subnet["id"],
///     route_table_id=example_aws_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.RouteTableAssociation("example", new()
///     {
///         SubnetId = exampleAwsSubnet.Id,
///         RouteTableId = exampleAwsRouteTable.Id,
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
/// 		_, err := ec2.NewRouteTableAssociation(ctx, "example", &ec2.RouteTableAssociationArgs{
/// 			SubnetId:     pulumi.Any(exampleAwsSubnet.Id),
/// 			RouteTableId: pulumi.Any(exampleAwsRouteTable.Id),
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
/// resource "aws_ec2_routetableassociation" "example" {
///   subnet_id      = exampleAwsSubnet.id
///   route_table_id = exampleAwsRouteTable.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.RouteTableAssociation;
/// import com.pulumi.aws.ec2.RouteTableAssociationArgs;
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
///         var example = new RouteTableAssociation("example", RouteTableAssociationArgs.builder()
///             .subnetId(exampleAwsSubnet.id())
///             .routeTableId(exampleAwsRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:RouteTableAssociation
///     properties:
///       subnetId: ${exampleAwsSubnet.id}
///       routeTableId: ${exampleAwsRouteTable.id}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.RouteTableAssociation("example", {
///     gatewayId: exampleAwsInternetGateway.id,
///     routeTableId: exampleAwsRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.RouteTableAssociation("example",
///     gateway_id=example_aws_internet_gateway["id"],
///     route_table_id=example_aws_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.RouteTableAssociation("example", new()
///     {
///         GatewayId = exampleAwsInternetGateway.Id,
///         RouteTableId = exampleAwsRouteTable.Id,
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
/// 		_, err := ec2.NewRouteTableAssociation(ctx, "example", &ec2.RouteTableAssociationArgs{
/// 			GatewayId:    pulumi.Any(exampleAwsInternetGateway.Id),
/// 			RouteTableId: pulumi.Any(exampleAwsRouteTable.Id),
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
/// resource "aws_ec2_routetableassociation" "example" {
///   gateway_id     = exampleAwsInternetGateway.id
///   route_table_id = exampleAwsRouteTable.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.RouteTableAssociation;
/// import com.pulumi.aws.ec2.RouteTableAssociationArgs;
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
///         var example = new RouteTableAssociation("example", RouteTableAssociationArgs.builder()
///             .gatewayId(exampleAwsInternetGateway.id())
///             .routeTableId(exampleAwsRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:RouteTableAssociation
///     properties:
///       gatewayId: ${exampleAwsInternetGateway.id}
///       routeTableId: ${exampleAwsRouteTable.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the association.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// With EC2 Internet Gateways:
///
///
/// **Using `pulumi import` to import** EC2 Route Table Associations using the associated resource ID and Route Table ID separated by a forward slash (`/`). For example:
///
/// With EC2 Subnets:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTableAssociation:RouteTableAssociation example subnet-6777656e646f6c796e/rtb-656c65616e6f72
/// ```
///
/// With EC2 Internet Gateways:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTableAssociation:RouteTableAssociation example igw-01b3a60780f8d034a/rtb-656c65616e6f72
/// ```
class RouteTableAssociation extends pulumi.CustomResource {
  /// The gateway ID to create an association. Conflicts with `subnetId`.
  late final pulumi.Output<String?> gatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the routing table to associate with.
  ///
  /// &gt; **NOTE:** Please note that one of either `subnetId` or `gatewayId` is required.
  late final pulumi.Output<String> routeTableId;
  /// The subnet ID to create an association. Conflicts with `gatewayId`.
  late final pulumi.Output<String?> subnetId;

  /// Creates a new [RouteTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTableAssociation]. {@macro pulumi_ec2_route_table_association_route_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTableAssociation(
    String name, {
    RouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTableAssociation:RouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    gatewayId = registerOutput<String?>('gatewayId');
    region = registerOutput<String>('region');
    routeTableId = registerOutput<String>('routeTableId');
    subnetId = registerOutput<String?>('subnetId');
  }

  /// Gets an existing [RouteTableAssociation] resource's state with the given [name] and [id].
  static RouteTableAssociation get(
    String name,
    pulumi.Input<String> id, {
    RouteTableAssociationState? state,
  }) {
    return RouteTableAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteTableAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTableAssociation:RouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    gatewayId = registerOutput<String?>('gatewayId');
    region = registerOutput<String>('region');
    routeTableId = registerOutput<String>('routeTableId');
    subnetId = registerOutput<String?>('subnetId');
  }
}
