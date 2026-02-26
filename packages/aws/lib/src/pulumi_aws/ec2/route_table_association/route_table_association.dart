import 'package:pulumi/pulumi.dart';
import 'route_table_association_args.dart';

/// Provides a resource to create an association between a route table and a subnet or a route table and an
/// internet gateway or virtual private gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const a = new aws.ec2.RouteTableAssociation("a", {
/// subnetId: foo.id,
/// routeTableId: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// a = aws.ec2.RouteTableAssociation("a",
/// subnet_id=foo["id"],
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
/// var a = new Aws.Ec2.RouteTableAssociation("a", new()
/// {
/// SubnetId = foo.Id,
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
/// _, err := ec2.NewRouteTableAssociation(ctx, "a", &ec2.RouteTableAssociationArgs{
/// SubnetId:     pulumi.Any(foo.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var a = new RouteTableAssociation("a", RouteTableAssociationArgs.builder()
/// .subnetId(foo.id())
/// .routeTableId(bar.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// a:
/// type: aws:ec2:RouteTableAssociation
/// properties:
/// subnetId: ${foo.id}
/// routeTableId: ${bar.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const b = new aws.ec2.RouteTableAssociation("b", {
/// gatewayId: foo.id,
/// routeTableId: bar.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// b = aws.ec2.RouteTableAssociation("b",
/// gateway_id=foo["id"],
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
/// var b = new Aws.Ec2.RouteTableAssociation("b", new()
/// {
/// GatewayId = foo.Id,
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
/// _, err := ec2.NewRouteTableAssociation(ctx, "b", &ec2.RouteTableAssociationArgs{
/// GatewayId:    pulumi.Any(foo.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var b = new RouteTableAssociation("b", RouteTableAssociationArgs.builder()
/// .gatewayId(foo.id())
/// .routeTableId(bar.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// b:
/// type: aws:ec2:RouteTableAssociation
/// properties:
/// gatewayId: ${foo.id}
/// routeTableId: ${bar.id}
/// ```
/// <!--End PulumiCodeChooser -->
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
class RouteTableAssociation extends CustomResource {
  /// The gateway ID to create an association. Conflicts with <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>.
  late final Output<String?> gatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the routing table to associate with.
  ///
  /// > **NOTE:** Please note that one of either <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span> or <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span> is required.
  late final Output<String> routeTableId;

  /// The subnet ID to create an association. Conflicts with <span pulumi-lang-nodejs="`gatewayId`" pulumi-lang-dotnet="`GatewayId`" pulumi-lang-go="`gatewayId`" pulumi-lang-python="`gateway_id`" pulumi-lang-yaml="`gatewayId`" pulumi-lang-java="`gatewayId`">`gateway_id`</span>.
  late final Output<String?> subnetId;

  RouteTableAssociation(
    String name, {
    RouteTableAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTableAssociation:RouteTableAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.gatewayId = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.routeTableId = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String?>();
  }
}
