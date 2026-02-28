import 'package:pulumi/pulumi.dart' as pulumi;
import 'main_route_table_association_args.dart';

/// Provides a resource for managing the main routing table of a VPC.
///
/// > **NOTE:** **Do not** use both `aws.ec2.DefaultRouteTable` to manage a default route table **and** `aws.ec2.MainRouteTableAssociation` with the same VPC due to possible route conflicts. See aws.ec2.DefaultRouteTable documentation for more details.
/// For more information, see the Amazon VPC User Guide on [Route Tables][aws-route-tables]. For information about managing normal route tables in Pulumi, see [`aws.ec2.RouteTable`][tf-route-tables].
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const a = new aws.ec2.MainRouteTableAssociation("a", {
///     vpcId: foo.id,
///     routeTableId: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// a = aws.ec2.MainRouteTableAssociation("a",
///     vpc_id=foo["id"],
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
///     var a = new Aws.Ec2.MainRouteTableAssociation("a", new()
///     {
///         VpcId = foo.Id,
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
/// 		_, err := ec2.NewMainRouteTableAssociation(ctx, "a", &ec2.MainRouteTableAssociationArgs{
/// 			VpcId:        pulumi.Any(foo.Id),
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
/// import com.pulumi.aws.ec2.MainRouteTableAssociation;
/// import com.pulumi.aws.ec2.MainRouteTableAssociationArgs;
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
///         var a = new MainRouteTableAssociation("a", MainRouteTableAssociationArgs.builder()
///             .vpcId(foo.id())
///             .routeTableId(bar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a:
///     type: aws:ec2:MainRouteTableAssociation
///     properties:
///       vpcId: ${foo.id}
///       routeTableId: ${bar.id}
/// ```
///
///
/// ## Notes
///
/// On VPC creation, the AWS API always creates an initial Main Route Table. This
/// resource records the ID of that Route Table under `original_route_table_id`.
/// The "Delete" action for a `main_route_table_association` consists of resetting
/// this original table as the Main Route Table for the VPC. You'll see this
/// additional Route Table in the AWS console; it must remain intact in order for
/// the `main_route_table_association` delete to work properly.
class MainRouteTableAssociation extends pulumi.CustomResource {
  /// Used internally, see **Notes** below
  late final pulumi.Output<String> originalRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  late final pulumi.Output<String> routeTableId;

  /// The ID of the VPC whose main route table should be set
  late final pulumi.Output<String> vpcId;

  /// Creates a new [MainRouteTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MainRouteTableAssociation]. {@macro pulumi_ec2_main_route_table_association_main_route_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MainRouteTableAssociation(
    String name, {
    MainRouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/mainRouteTableAssociation:MainRouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.originalRouteTableId = registerOutput<String>('originalRouteTableId');
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
