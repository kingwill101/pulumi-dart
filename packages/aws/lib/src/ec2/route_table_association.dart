import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_association_args.dart';

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
/// const a = new aws.ec2.RouteTableAssociation("a", {
///     subnetId: foo.id,
///     routeTableId: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// a = aws.ec2.RouteTableAssociation("a",
///     subnet_id=foo["id"],
///     route_table_id=bar["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var a = new Aws.Ec2.RouteTableAssociation("a", new()
///     {
///         SubnetId = foo.Id,
///         RouteTableId = bar.Id,
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
/// 		_, err := ec2.NewRouteTableAssociation(ctx, "a", &ec2.RouteTableAssociationArgs{
/// 			SubnetId:     pulumi.Any(foo.Id),
/// 			RouteTableId: pulumi.Any(bar.Id),
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
/// import com.pulumi.aws.ec2.RouteTableAssociation;
/// import com.pulumi.aws.ec2.RouteTableAssociationArgs;
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
///         var a = new RouteTableAssociation("a", RouteTableAssociationArgs.builder()
///             .subnetId(foo.id())
///             .routeTableId(bar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a:
///     type: aws:ec2:RouteTableAssociation
///     properties:
///       subnetId: ${foo.id}
///       routeTableId: ${bar.id}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const b = new aws.ec2.RouteTableAssociation("b", {
///     gatewayId: foo.id,
///     routeTableId: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// b = aws.ec2.RouteTableAssociation("b",
///     gateway_id=foo["id"],
///     route_table_id=bar["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var b = new Aws.Ec2.RouteTableAssociation("b", new()
///     {
///         GatewayId = foo.Id,
///         RouteTableId = bar.Id,
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
/// 		_, err := ec2.NewRouteTableAssociation(ctx, "b", &ec2.RouteTableAssociationArgs{
/// 			GatewayId:    pulumi.Any(foo.Id),
/// 			RouteTableId: pulumi.Any(bar.Id),
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
/// import com.pulumi.aws.ec2.RouteTableAssociation;
/// import com.pulumi.aws.ec2.RouteTableAssociationArgs;
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
///         var b = new RouteTableAssociation("b", RouteTableAssociationArgs.builder()
///             .gatewayId(foo.id())
///             .routeTableId(bar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   b:
///     type: aws:ec2:RouteTableAssociation
///     properties:
///       gatewayId: ${foo.id}
///       routeTableId: ${bar.id}
/// ```
///
///
/// ## Import
///
/// With EC2 Internet Gateways:
///
///
/// **Using `pulumi import` to import** EC2 Route Table Associations using the associated resource ID and Route Table ID separated by a forward slash (`/`). For example:
///
/// With EC2 Subnets:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTableAssociation:RouteTableAssociation assoc subnet-6777656e646f6c796e/rtb-656c65616e6f72
/// ```
///
/// With EC2 Internet Gateways:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTableAssociation:RouteTableAssociation assoc igw-01b3a60780f8d034a/rtb-656c65616e6f72
/// ```
class RouteTableAssociation extends pulumi.CustomResource {
  /// The gateway ID to create an association. Conflicts with `subnet_id`.
  late final pulumi.Output<String?> gatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the routing table to associate with.
  ///
  /// > **NOTE:** Please note that one of either `subnet_id` or `gateway_id` is required.
  late final pulumi.Output<String> routeTableId;

  /// The subnet ID to create an association. Conflicts with `gateway_id`.
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
    this.gatewayId = registerOutput<String?>('gatewayId');
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.subnetId = registerOutput<String?>('subnetId');
  }
}
