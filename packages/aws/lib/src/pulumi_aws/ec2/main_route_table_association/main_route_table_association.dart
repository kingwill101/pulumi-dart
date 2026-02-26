import 'package:pulumi/pulumi.dart';
import 'main_route_table_association_args.dart';

/// Provides a resource for managing the main routing table of a VPC.
///
/// > **NOTE:** **Do not** use both <span pulumi-lang-nodejs="`aws.ec2.DefaultRouteTable`" pulumi-lang-dotnet="`aws.ec2.DefaultRouteTable`" pulumi-lang-go="`ec2.DefaultRouteTable`" pulumi-lang-python="`ec2.DefaultRouteTable`" pulumi-lang-yaml="`aws.ec2.DefaultRouteTable`" pulumi-lang-java="`aws.ec2.DefaultRouteTable`">`aws.ec2.DefaultRouteTable`</span> to manage a default route table **and** <span pulumi-lang-nodejs="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-go="`ec2.MainRouteTableAssociation`" pulumi-lang-python="`ec2.MainRouteTableAssociation`" pulumi-lang-yaml="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-java="`aws.ec2.MainRouteTableAssociation`">`aws.ec2.MainRouteTableAssociation`</span> with the same VPC due to possible route conflicts. See<span pulumi-lang-nodejs=" aws.ec2.DefaultRouteTable " pulumi-lang-dotnet=" aws.ec2.DefaultRouteTable " pulumi-lang-go=" ec2.DefaultRouteTable " pulumi-lang-python=" ec2.DefaultRouteTable " pulumi-lang-yaml=" aws.ec2.DefaultRouteTable " pulumi-lang-java=" aws.ec2.DefaultRouteTable "> aws.ec2.DefaultRouteTable </span>documentation for more details.
/// For more information, see the Amazon VPC User Guide on [Route Tables][aws-route-tables]. For information about managing normal route tables in Pulumi, see [<span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span>][tf-route-tables].
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const a = new aws.ec2.MainRouteTableAssociation("a", {
/// vpcId: foo.id,
/// routeTableId: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// a = aws.ec2.MainRouteTableAssociation("a",
/// vpc_id=foo["id"],
/// route_table_id=bar["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var a = new Aws.Ec2.MainRouteTableAssociation("a", new()
/// {
/// VpcId = foo.Id,
/// RouteTableId = bar.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewMainRouteTableAssociation(ctx, "a", &ec2.MainRouteTableAssociationArgs{
/// VpcId:        pulumi.Any(foo.Id),
/// RouteTableId: pulumi.Any(bar.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var a = new MainRouteTableAssociation("a", MainRouteTableAssociationArgs.builder()
/// .vpcId(foo.id())
/// .routeTableId(bar.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// a:
/// type: aws:ec2:MainRouteTableAssociation
/// properties:
/// vpcId: ${foo.id}
/// routeTableId: ${bar.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Notes
///
/// On VPC creation, the AWS API always creates an initial Main Route Table. This
/// resource records the ID of that Route Table under <span pulumi-lang-nodejs="`originalRouteTableId`" pulumi-lang-dotnet="`OriginalRouteTableId`" pulumi-lang-go="`originalRouteTableId`" pulumi-lang-python="`original_route_table_id`" pulumi-lang-yaml="`originalRouteTableId`" pulumi-lang-java="`originalRouteTableId`">`original_route_table_id`</span>.
/// The "Delete" action for a <span pulumi-lang-nodejs="`mainRouteTableAssociation`" pulumi-lang-dotnet="`MainRouteTableAssociation`" pulumi-lang-go="`mainRouteTableAssociation`" pulumi-lang-python="`main_route_table_association`" pulumi-lang-yaml="`mainRouteTableAssociation`" pulumi-lang-java="`mainRouteTableAssociation`">`main_route_table_association`</span> consists of resetting
/// this original table as the Main Route Table for the VPC. You'll see this
/// additional Route Table in the AWS console; it must remain intact in order for
/// the <span pulumi-lang-nodejs="`mainRouteTableAssociation`" pulumi-lang-dotnet="`MainRouteTableAssociation`" pulumi-lang-go="`mainRouteTableAssociation`" pulumi-lang-python="`main_route_table_association`" pulumi-lang-yaml="`mainRouteTableAssociation`" pulumi-lang-java="`mainRouteTableAssociation`">`main_route_table_association`</span> delete to work properly.
class MainRouteTableAssociation extends CustomResource {
  /// Used internally, see **Notes** below
  late final Output<String> originalRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  late final Output<String> routeTableId;

  /// The ID of the VPC whose main route table should be set
  late final Output<String> vpcId;

  MainRouteTableAssociation(
    String name, {
    MainRouteTableAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/mainRouteTableAssociation:MainRouteTableAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.originalRouteTableId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.routeTableId = Output.createUnknown<String>();
    this.vpcId = Output.createUnknown<String>();
  }
}
