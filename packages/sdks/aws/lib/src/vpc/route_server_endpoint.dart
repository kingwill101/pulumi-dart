import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_endpoint_args.dart';
import 'route_server_endpoint_state.dart';
import 'route_server_endpoint_timeouts.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server Endpoint.
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
/// const test = new aws.vpc.RouteServerEndpoint("test", {
///     routeServerId: example.routeServerId,
///     subnetId: main.id,
///     tags: {
///         Name: "Endpoint A",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServerEndpoint("test",
///     route_server_id=example["routeServerId"],
///     subnet_id=main["id"],
///     tags={
///         "Name": "Endpoint A",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Vpc.RouteServerEndpoint("test", new()
///     {
///         RouteServerId = example.RouteServerId,
///         SubnetId = main.Id,
///         Tags =
///         {
///             { "Name", "Endpoint A" },
///         },
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
/// 		_, err := vpc.NewRouteServerEndpoint(ctx, "test", &vpc.RouteServerEndpointArgs{
/// 			RouteServerId: pulumi.Any(example.RouteServerId),
/// 			SubnetId:      pulumi.Any(main.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Endpoint A"),
/// 			},
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
/// import com.pulumi.aws.vpc.RouteServerEndpoint;
/// import com.pulumi.aws.vpc.RouteServerEndpointArgs;
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
///         var test = new RouteServerEndpoint("test", RouteServerEndpointArgs.builder()
///             .routeServerId(example.routeServerId())
///             .subnetId(main.id())
///             .tags(Map.of("Name", "Endpoint A"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:vpc:RouteServerEndpoint
///     properties:
///       routeServerId: ${example.routeServerId}
///       subnetId: ${main.id}
///       tags:
///         Name: Endpoint A
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server Endpoint using the `route_server_endpoint_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerEndpoint:RouteServerEndpoint example rse-12345678
/// ```
class RouteServerEndpoint extends pulumi.CustomResource {
  /// The ARN of the route server endpoint.
  late final pulumi.Output<String> arn;

  /// The IP address of the Elastic network interface for the endpoint.
  late final pulumi.Output<String> eniAddress;

  /// The ID of the Elastic network interface for the endpoint.
  late final pulumi.Output<String> eniId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The unique identifier of the route server endpoint.
  late final pulumi.Output<String> routeServerEndpointId;

  /// The ID of the route server for which to create an endpoint.
  late final pulumi.Output<String> routeServerId;

  /// The ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<RouteServerEndpointTimeouts?> timeouts;

  /// The ID of the VPC containing the endpoint.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [RouteServerEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteServerEndpoint]. {@macro pulumi_vpc_route_server_endpoint_route_server_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteServerEndpoint(
    String name, {
    RouteServerEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/routeServerEndpoint:RouteServerEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    eniAddress = registerOutput<String>('eniAddress');
    eniId = registerOutput<String>('eniId');
    region = registerOutput<String>('region');
    routeServerEndpointId = registerOutput<String>('routeServerEndpointId');
    routeServerId = registerOutput<String>('routeServerId');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<RouteServerEndpointTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RouteServerEndpointTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [RouteServerEndpoint] resource's state with the given [name] and [id].
  static RouteServerEndpoint get(
    String name,
    pulumi.Input<String> id, {
    RouteServerEndpointState? state,
  }) {
    return RouteServerEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteServerEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/routeServerEndpoint:RouteServerEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    eniAddress = registerOutput<String>('eniAddress');
    eniId = registerOutput<String>('eniId');
    region = registerOutput<String>('region');
    routeServerEndpointId = registerOutput<String>('routeServerEndpointId');
    routeServerId = registerOutput<String>('routeServerId');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<RouteServerEndpointTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RouteServerEndpointTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vpcId = registerOutput<String>('vpcId');
  }
}
