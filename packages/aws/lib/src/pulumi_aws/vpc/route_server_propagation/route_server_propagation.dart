import 'package:pulumi/pulumi.dart';
import '../route_server_propagation_timeouts/route_server_propagation_timeouts.dart';
import 'route_server_propagation_args.dart';

/// Provides a resource for managing propagation between VPC (Virtual Private Cloud) route server and a route table.
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
/// const example = new aws.vpc.RouteServerPropagation("example", {
/// routeServerId: exampleAwsVpcRouteServer.routeServerId,
/// routeTableId: exampleAwsRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.RouteServerPropagation("example",
/// route_server_id=example_aws_vpc_route_server["routeServerId"],
/// route_table_id=example_aws_route_table["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Vpc.RouteServerPropagation("example", new()
/// {
/// RouteServerId = exampleAwsVpcRouteServer.RouteServerId,
/// RouteTableId = exampleAwsRouteTable.Id,
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
/// _, err := vpc.NewRouteServerPropagation(ctx, "example", &vpc.RouteServerPropagationArgs{
/// RouteServerId: pulumi.Any(exampleAwsVpcRouteServer.RouteServerId),
/// RouteTableId:  pulumi.Any(exampleAwsRouteTable.Id),
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
/// import com.pulumi.aws.vpc.RouteServerPropagation;
/// import com.pulumi.aws.vpc.RouteServerPropagationArgs;
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
/// var example = new RouteServerPropagation("example", RouteServerPropagationArgs.builder()
/// .routeServerId(exampleAwsVpcRouteServer.routeServerId())
/// .routeTableId(exampleAwsRouteTable.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpc:RouteServerPropagation
/// properties:
/// routeServerId: ${exampleAwsVpcRouteServer.routeServerId}
/// routeTableId: ${exampleAwsRouteTable.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, to  to import VPC (Virtual Private Cloud) Route Server Propagation using the associated resource ID and route table ID separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerPropagation:RouteServerPropagation example rs-12345678,rtb-656c65616e6f72
/// ```
class RouteServerPropagation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique identifier for the route server to be associated.
  late final Output<String> routeServerId;

  /// The ID of the route table to which route server will propagate routes.
  ///
  /// The following arguments are optional:
  late final Output<String> routeTableId;
  late final Output<RouteServerPropagationTimeouts?> timeouts;

  RouteServerPropagation(
    String name, {
    RouteServerPropagationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPropagation:RouteServerPropagation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.timeouts = registerOutput<RouteServerPropagationTimeouts?>('timeouts');
  }
}
