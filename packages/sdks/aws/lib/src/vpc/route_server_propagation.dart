import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_propagation_args.dart';
import 'route_server_propagation_state.dart';
import 'route_server_propagation_timeouts.dart';

/// Provides a resource for managing propagation between VPC route server and a route table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpc.RouteServerPropagation("example", {
///     routeServerId: exampleAwsVpcRouteServer.routeServerId,
///     routeTableId: exampleAwsRouteTable.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.RouteServerPropagation("example",
///     route_server_id=example_aws_vpc_route_server["routeServerId"],
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
///     var example = new Aws.Vpc.RouteServerPropagation("example", new()
///     {
///         RouteServerId = exampleAwsVpcRouteServer.RouteServerId,
///         RouteTableId = exampleAwsRouteTable.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewRouteServerPropagation(ctx, "example", &vpc.RouteServerPropagationArgs{
/// 			RouteServerId: pulumi.Any(exampleAwsVpcRouteServer.RouteServerId),
/// 			RouteTableId:  pulumi.Any(exampleAwsRouteTable.Id),
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
/// resource "aws_vpc_routeserverpropagation" "example" {
///   route_server_id = exampleAwsVpcRouteServer.routeServerId
///   route_table_id  = exampleAwsRouteTable.id
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
///         var example = new RouteServerPropagation("example", RouteServerPropagationArgs.builder()
///             .routeServerId(exampleAwsVpcRouteServer.routeServerId())
///             .routeTableId(exampleAwsRouteTable.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpc:RouteServerPropagation
///     properties:
///       routeServerId: ${exampleAwsVpcRouteServer.routeServerId}
///       routeTableId: ${exampleAwsRouteTable.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, to  to import VPC Route Server Propagation using the associated resource ID and route table ID separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerPropagation:RouteServerPropagation example rs-12345678,rtb-656c65616e6f72
/// ```
class RouteServerPropagation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The unique identifier for the route server to be associated.
  late final pulumi.Output<String> routeServerId;
  /// The ID of the route table to which route server will propagate routes.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> routeTableId;
  late final pulumi.Output<RouteServerPropagationTimeouts?> timeouts;

  /// Creates a new [RouteServerPropagation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteServerPropagation]. {@macro pulumi_vpc_route_server_propagation_route_server_propagation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteServerPropagation(
    String name, {
    RouteServerPropagationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPropagation:RouteServerPropagation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    routeServerId = registerOutput<String>('routeServerId');
    routeTableId = registerOutput<String>('routeTableId');
    timeouts = registerOutput<RouteServerPropagationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteServerPropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [RouteServerPropagation] resource's state with the given [name] and [id].
  static RouteServerPropagation get(
    String name,
    pulumi.Input<String> id, {
    RouteServerPropagationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RouteServerPropagation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RouteServerPropagation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPropagation:RouteServerPropagation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    routeServerId = registerOutput<String>('routeServerId');
    routeTableId = registerOutput<String>('routeTableId');
    timeouts = registerOutput<RouteServerPropagationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteServerPropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [RouteServerPropagation] resource.
  RouteServerPropagation.reference(String urn)
    : super(
        'aws:vpc/routeServerPropagation:RouteServerPropagation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    routeServerId = registerOutput<String>('routeServerId');
    routeTableId = registerOutput<String>('routeTableId');
    timeouts = registerOutput<RouteServerPropagationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteServerPropagationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
