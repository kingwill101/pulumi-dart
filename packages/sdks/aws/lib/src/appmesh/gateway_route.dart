import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_args.dart';
import 'gateway_route_spec.dart';
import 'gateway_route_state.dart';

/// Provides an AWS App Mesh gateway route resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appmesh.GatewayRoute("example", {
///     spec: {
///         httpRoute: {
///             action: {
///                 target: {
///                     virtualService: {
///                         virtualServiceName: exampleAwsAppmeshVirtualService.name,
///                     },
///                 },
///             },
///             match: {
///                 prefix: "/",
///             },
///         },
///     },
///     name: "example-gateway-route",
///     meshName: "example-service-mesh",
///     virtualGatewayName: exampleAwsAppmeshVirtualGateway.name,
///     tags: {
///         Environment: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appmesh.GatewayRoute("example",
///     spec={
///         "http_route": {
///             "action": {
///                 "target": {
///                     "virtual_service": {
///                         "virtual_service_name": example_aws_appmesh_virtual_service["name"],
///                     },
///                 },
///             },
///             "match": {
///                 "prefix": "/",
///             },
///         },
///     },
///     name="example-gateway-route",
///     mesh_name="example-service-mesh",
///     virtual_gateway_name=example_aws_appmesh_virtual_gateway["name"],
///     tags={
///         "Environment": "test",
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
///     var example = new Aws.AppMesh.GatewayRoute("example", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.GatewayRouteSpecArgs
///         {
///             HttpRoute = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteArgs
///             {
///                 Action = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteActionArgs
///                 {
///                     Target = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteActionTargetArgs
///                     {
///                         VirtualService = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs
///                         {
///                             VirtualServiceName = exampleAwsAppmeshVirtualService.Name,
///                         },
///                     },
///                 },
///                 Match = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteMatchArgs
///                 {
///                     Prefix = "/",
///                 },
///             },
///         },
///         Name = "example-gateway-route",
///         MeshName = "example-service-mesh",
///         VirtualGatewayName = exampleAwsAppmeshVirtualGateway.Name,
///         Tags =
///         {
///             { "Environment", "test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appmesh.NewGatewayRoute(ctx, "example", &appmesh.GatewayRouteArgs{
/// 			Spec: &appmesh.GatewayRouteSpecArgs{
/// 				HttpRoute: &appmesh.GatewayRouteSpecHttpRouteArgs{
/// 					Action: &appmesh.GatewayRouteSpecHttpRouteActionArgs{
/// 						Target: &appmesh.GatewayRouteSpecHttpRouteActionTargetArgs{
/// 							VirtualService: &appmesh.GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs{
/// 								VirtualServiceName: pulumi.Any(exampleAwsAppmeshVirtualService.Name),
/// 							},
/// 						},
/// 					},
/// 					Match: &appmesh.GatewayRouteSpecHttpRouteMatchArgs{
/// 						Prefix: pulumi.String("/"),
/// 					},
/// 				},
/// 			},
/// 			Name:               pulumi.String("example-gateway-route"),
/// 			MeshName:           pulumi.String("example-service-mesh"),
/// 			VirtualGatewayName: pulumi.Any(exampleAwsAppmeshVirtualGateway.Name),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("test"),
/// 			},
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
/// resource "aws_appmesh_gatewayroute" "example" {
///   spec = {
///     http_route = {
///       action = {
///         target = {
///           virtual_service = {
///             virtual_service_name = exampleAwsAppmeshVirtualService.name
///           }
///         }
///       }
///       match = {
///         prefix = "/"
///       }
///     }
///   }
///   name                 = "example-gateway-route"
///   mesh_name            = "example-service-mesh"
///   virtual_gateway_name = exampleAwsAppmeshVirtualGateway.name
///   tags = {
///     "Environment" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.GatewayRoute;
/// import com.pulumi.aws.appmesh.GatewayRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteActionArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteActionTargetArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteMatchArgs;
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
///         var example = new GatewayRoute("example", GatewayRouteArgs.builder()
///             .spec(GatewayRouteSpecArgs.builder()
///                 .httpRoute(GatewayRouteSpecHttpRouteArgs.builder()
///                     .action(GatewayRouteSpecHttpRouteActionArgs.builder()
///                         .target(GatewayRouteSpecHttpRouteActionTargetArgs.builder()
///                             .virtualService(GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs.builder()
///                                 .virtualServiceName(exampleAwsAppmeshVirtualService.name())
///                                 .build())
///                             .build())
///                         .build())
///                     .match(GatewayRouteSpecHttpRouteMatchArgs.builder()
///                         .prefix("/")
///                         .build())
///                     .build())
///                 .build())
///             .name("example-gateway-route")
///             .meshName("example-service-mesh")
///             .virtualGatewayName(exampleAwsAppmeshVirtualGateway.name())
///             .tags(Map.of("Environment", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appmesh:GatewayRoute
///     properties:
///       spec:
///         httpRoute:
///           action:
///             target:
///               virtualService:
///                 virtualServiceName: ${exampleAwsAppmeshVirtualService.name}
///           match:
///             prefix: /
///       name: example-gateway-route
///       meshName: example-service-mesh
///       virtualGatewayName: ${exampleAwsAppmeshVirtualGateway.name}
///       tags:
///         Environment: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh gateway routes using `meshName` and `virtualGatewayName` together with the gateway route's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/gatewayRoute:GatewayRoute example mesh/gw1/example-gateway-route
/// ```
class GatewayRoute extends pulumi.CustomResource {
  /// ARN of the gateway route.
  late final pulumi.Output<String> arn;
  /// Creation date of the gateway route.
  late final pulumi.Output<String> createdDate;
  /// Last update date of the gateway route.
  late final pulumi.Output<String> lastUpdatedDate;
  /// Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;
  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;
  /// Gateway route specification to apply.
  late final pulumi.Output<GatewayRouteSpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> virtualGatewayName;

  /// Creates a new [GatewayRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewayRoute]. {@macro pulumi_appmesh_gateway_route_gateway_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewayRoute(
    String name, {
    GatewayRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/gatewayRoute:GatewayRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<GatewayRouteSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayRouteSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualGatewayName = registerOutput<String>('virtualGatewayName');
  }

  /// Gets an existing [GatewayRoute] resource's state with the given [name] and [id].
  static GatewayRoute get(
    String name,
    pulumi.Input<String> id, {
    GatewayRouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GatewayRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GatewayRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/gatewayRoute:GatewayRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<GatewayRouteSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayRouteSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualGatewayName = registerOutput<String>('virtualGatewayName');
  }

  /// Creates a typed reference to an existing [GatewayRoute] resource.
  GatewayRoute.reference(String urn)
    : super(
        'aws:appmesh/gatewayRoute:GatewayRoute',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<GatewayRouteSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GatewayRouteSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualGatewayName = registerOutput<String>('virtualGatewayName');
  }
}
