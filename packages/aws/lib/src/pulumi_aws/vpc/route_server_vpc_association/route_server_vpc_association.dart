import 'package:pulumi/pulumi.dart';
import '../route_server_vpc_association_timeouts/route_server_vpc_association_timeouts.dart';
import 'route_server_vpc_association_args.dart';

/// Provides a resource for managing association between VPC (Virtual Private Cloud) route server and a VPC.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpc.RouteServerVpcAssociation("example", {
/// routeServerId: exampleAwsVpcRouteServer.routeServerId,
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.RouteServerVpcAssociation("example",
/// route_server_id=example_aws_vpc_route_server["routeServerId"],
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Vpc.RouteServerVpcAssociation("example", new()
/// {
/// RouteServerId = exampleAwsVpcRouteServer.RouteServerId,
/// VpcId = exampleAwsVpc.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.NewRouteServerVpcAssociation(ctx, "example", &vpc.RouteServerVpcAssociationArgs{
/// RouteServerId: pulumi.Any(exampleAwsVpcRouteServer.RouteServerId),
/// VpcId:         pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.vpc.RouteServerVpcAssociation;
/// import com.pulumi.aws.vpc.RouteServerVpcAssociationArgs;
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
/// var example = new RouteServerVpcAssociation("example", RouteServerVpcAssociationArgs.builder()
/// .routeServerId(exampleAwsVpcRouteServer.routeServerId())
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpc:RouteServerVpcAssociation
/// properties:
/// routeServerId: ${exampleAwsVpcRouteServer.routeServerId}
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, to  to import VPC (Virtual Private Cloud) Route Server Association using the associated resource ID and VPC Id separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerVpcAssociation:RouteServerVpcAssociation example rs-12345678,vpc-0f001273ec18911b1
/// ```
class RouteServerVpcAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique identifier for the route server to be associated.
  late final Output<String> routeServerId;
  late final Output<RouteServerVpcAssociationTimeouts?> timeouts;

  /// The ID of the VPC to associate with the route server.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  RouteServerVpcAssociation(
    String name, {
    RouteServerVpcAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerVpcAssociation:RouteServerVpcAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.timeouts =
        registerOutput<RouteServerVpcAssociationTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
