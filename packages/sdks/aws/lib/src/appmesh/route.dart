import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_spec.dart';
import 'route_state.dart';

/// Provides an AWS App Mesh route resource.
///
/// ## Example Usage
///
/// ### HTTP Routing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
///     spec: {
///         httpRoute: {
///             match: {
///                 prefix: "/",
///             },
///             action: {
///                 weightedTargets: [
///                     {
///                         virtualNode: serviceb1.name,
///                         weight: 90,
///                     },
///                     {
///                         virtualNode: serviceb2.name,
///                         weight: 10,
///                     },
///                 ],
///             },
///         },
///     },
///     name: "serviceB-route",
///     meshName: simple.id,
///     virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
///     spec={
///         "http_route": {
///             "match": {
///                 "prefix": "/",
///             },
///             "action": {
///                 "weighted_targets": [
///                     {
///                         "virtual_node": serviceb1["name"],
///                         "weight": 90,
///                     },
///                     {
///                         "virtual_node": serviceb2["name"],
///                         "weight": 10,
///                     },
///                 ],
///             },
///         },
///     },
///     name="serviceB-route",
///     mesh_name=simple["id"],
///     virtual_router_name=serviceb_aws_appmesh_virtual_router["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb = new Aws.AppMesh.Route("serviceb", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
///         {
///             HttpRoute = new Aws.AppMesh.Inputs.RouteSpecHttpRouteArgs
///             {
///                 Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchArgs
///                 {
///                     Prefix = "/",
///                 },
///                 Action = new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionArgs
///                 {
///                     WeightedTargets = new[]
///                     {
///                         new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
///                         {
///                             VirtualNode = serviceb1.Name,
///                             Weight = 90,
///                         },
///                         new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
///                         {
///                             VirtualNode = serviceb2.Name,
///                             Weight = 10,
///                         },
///                     },
///                 },
///             },
///         },
///         Name = "serviceB-route",
///         MeshName = simple.Id,
///         VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
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
/// 		_, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// 			Spec: &appmesh.RouteSpecArgs{
/// 				HttpRoute: &appmesh.RouteSpecHttpRouteArgs{
/// 					Match: &appmesh.RouteSpecHttpRouteMatchArgs{
/// 						Prefix: pulumi.String("/"),
/// 					},
/// 					Action: &appmesh.RouteSpecHttpRouteActionArgs{
/// 						WeightedTargets: appmesh.RouteSpecHttpRouteActionWeightedTargetArray{
/// 							&appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// 								VirtualNode: pulumi.Any(serviceb1.Name),
/// 								Weight:      pulumi.Int(90),
/// 							},
/// 							&appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// 								VirtualNode: pulumi.Any(serviceb2.Name),
/// 								Weight:      pulumi.Int(10),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("serviceB-route"),
/// 			MeshName:          pulumi.Any(simple.Id),
/// 			VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
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
/// resource "aws_appmesh_route" "serviceb" {
///   spec = {
///     http_route = {
///       match = {
///         prefix = "/"
///       }
///       action = {
///         weighted_targets = [{
///           "virtualNode" = serviceb1.name
///           "weight"      = 90
///           }, {
///           "virtualNode" = serviceb2.name
///           "weight"      = 10
///         }]
///       }
///     }
///   }
///   name                = "serviceB-route"
///   mesh_name           = simple.id
///   virtual_router_name = servicebAwsAppmeshVirtualRouter.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionWeightedTargetArgs;
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
///         var serviceb = new Route("serviceb", RouteArgs.builder()
///             .spec(RouteSpecArgs.builder()
///                 .httpRoute(RouteSpecHttpRouteArgs.builder()
///                     .match(RouteSpecHttpRouteMatchArgs.builder()
///                         .prefix("/")
///                         .build())
///                     .action(RouteSpecHttpRouteActionArgs.builder()
///                         .weightedTargets(
///                             RouteSpecHttpRouteActionWeightedTargetArgs.builder()
///                                 .virtualNode(serviceb1.name())
///                                 .weight(90)
///                                 .build(),
///                             RouteSpecHttpRouteActionWeightedTargetArgs.builder()
///                                 .virtualNode(serviceb2.name())
///                                 .weight(10)
///                                 .build())
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceB-route")
///             .meshName(simple.id())
///             .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb:
///     type: aws:appmesh:Route
///     properties:
///       spec:
///         httpRoute:
///           match:
///             prefix: /
///           action:
///             weightedTargets:
///               - virtualNode: ${serviceb1.name}
///                 weight: 90
///               - virtualNode: ${serviceb2.name}
///                 weight: 10
///       name: serviceB-route
///       meshName: ${simple.id}
///       virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// ```
///
///
/// ### HTTP Header Routing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
///     spec: {
///         httpRoute: {
///             match: {
///                 headers: [{
///                     match: {
///                         prefix: "123",
///                     },
///                     name: "clientRequestId",
///                 }],
///                 method: "POST",
///                 prefix: "/",
///                 scheme: "https",
///             },
///             action: {
///                 weightedTargets: [{
///                     virtualNode: servicebAwsAppmeshVirtualNode.name,
///                     weight: 100,
///                 }],
///             },
///         },
///     },
///     name: "serviceB-route",
///     meshName: simple.id,
///     virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
///     spec={
///         "http_route": {
///             "match": {
///                 "headers": [{
///                     "match": {
///                         "prefix": "123",
///                     },
///                     "name": "clientRequestId",
///                 }],
///                 "method": "POST",
///                 "prefix": "/",
///                 "scheme": "https",
///             },
///             "action": {
///                 "weighted_targets": [{
///                     "virtual_node": serviceb_aws_appmesh_virtual_node["name"],
///                     "weight": 100,
///                 }],
///             },
///         },
///     },
///     name="serviceB-route",
///     mesh_name=simple["id"],
///     virtual_router_name=serviceb_aws_appmesh_virtual_router["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb = new Aws.AppMesh.Route("serviceb", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
///         {
///             HttpRoute = new Aws.AppMesh.Inputs.RouteSpecHttpRouteArgs
///             {
///                 Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchArgs
///                 {
///                     Headers = new[]
///                     {
///                         new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchHeaderArgs
///                         {
///                             Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchHeaderMatchArgs
///                             {
///                                 Prefix = "123",
///                             },
///                             Name = "clientRequestId",
///                         },
///                     },
///                     Method = "POST",
///                     Prefix = "/",
///                     Scheme = "https",
///                 },
///                 Action = new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionArgs
///                 {
///                     WeightedTargets = new[]
///                     {
///                         new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
///                         {
///                             VirtualNode = servicebAwsAppmeshVirtualNode.Name,
///                             Weight = 100,
///                         },
///                     },
///                 },
///             },
///         },
///         Name = "serviceB-route",
///         MeshName = simple.Id,
///         VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
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
/// 		_, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// 			Spec: &appmesh.RouteSpecArgs{
/// 				HttpRoute: &appmesh.RouteSpecHttpRouteArgs{
/// 					Match: &appmesh.RouteSpecHttpRouteMatchArgs{
/// 						Headers: appmesh.RouteSpecHttpRouteMatchHeaderArray{
/// 							&appmesh.RouteSpecHttpRouteMatchHeaderArgs{
/// 								Match: &appmesh.RouteSpecHttpRouteMatchHeaderMatchArgs{
/// 									Prefix: pulumi.String("123"),
/// 								},
/// 								Name: pulumi.String("clientRequestId"),
/// 							},
/// 						},
/// 						Method: pulumi.String("POST"),
/// 						Prefix: pulumi.String("/"),
/// 						Scheme: pulumi.String("https"),
/// 					},
/// 					Action: &appmesh.RouteSpecHttpRouteActionArgs{
/// 						WeightedTargets: appmesh.RouteSpecHttpRouteActionWeightedTargetArray{
/// 							&appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// 								VirtualNode: pulumi.Any(servicebAwsAppmeshVirtualNode.Name),
/// 								Weight:      pulumi.Int(100),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("serviceB-route"),
/// 			MeshName:          pulumi.Any(simple.Id),
/// 			VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
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
/// resource "aws_appmesh_route" "serviceb" {
///   spec = {
///     http_route = {
///       match = {
///         headers = [{
///           "match" = {
///             "prefix" = "123"
///           }
///           "name" = "clientRequestId"
///         }]
///         method = "POST"
///         prefix = "/"
///         scheme = "https"
///       }
///       action = {
///         weighted_targets = [{
///           "virtualNode" = servicebAwsAppmeshVirtualNode.name
///           "weight"      = 100
///         }]
///       }
///     }
///   }
///   name                = "serviceB-route"
///   mesh_name           = simple.id
///   virtual_router_name = servicebAwsAppmeshVirtualRouter.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchHeaderArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchHeaderMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionWeightedTargetArgs;
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
///         var serviceb = new Route("serviceb", RouteArgs.builder()
///             .spec(RouteSpecArgs.builder()
///                 .httpRoute(RouteSpecHttpRouteArgs.builder()
///                     .match(RouteSpecHttpRouteMatchArgs.builder()
///                         .headers(RouteSpecHttpRouteMatchHeaderArgs.builder()
///                             .match(RouteSpecHttpRouteMatchHeaderMatchArgs.builder()
///                                 .prefix("123")
///                                 .build())
///                             .name("clientRequestId")
///                             .build())
///                         .method("POST")
///                         .prefix("/")
///                         .scheme("https")
///                         .build())
///                     .action(RouteSpecHttpRouteActionArgs.builder()
///                         .weightedTargets(RouteSpecHttpRouteActionWeightedTargetArgs.builder()
///                             .virtualNode(servicebAwsAppmeshVirtualNode.name())
///                             .weight(100)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceB-route")
///             .meshName(simple.id())
///             .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb:
///     type: aws:appmesh:Route
///     properties:
///       spec:
///         httpRoute:
///           match:
///             headers:
///               - match:
///                   prefix: '123'
///                 name: clientRequestId
///             method: POST
///             prefix: /
///             scheme: https
///           action:
///             weightedTargets:
///               - virtualNode: ${servicebAwsAppmeshVirtualNode.name}
///                 weight: 100
///       name: serviceB-route
///       meshName: ${simple.id}
///       virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// ```
///
///
/// ### Retry Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
///     spec: {
///         httpRoute: {
///             match: {
///                 prefix: "/",
///             },
///             retryPolicy: {
///                 perRetryTimeout: {
///                     unit: "s",
///                     value: 15,
///                 },
///                 httpRetryEvents: ["server-error"],
///                 maxRetries: 1,
///             },
///             action: {
///                 weightedTargets: [{
///                     virtualNode: servicebAwsAppmeshVirtualNode.name,
///                     weight: 100,
///                 }],
///             },
///         },
///     },
///     name: "serviceB-route",
///     meshName: simple.id,
///     virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
///     spec={
///         "http_route": {
///             "match": {
///                 "prefix": "/",
///             },
///             "retry_policy": {
///                 "per_retry_timeout": {
///                     "unit": "s",
///                     "value": 15,
///                 },
///                 "http_retry_events": ["server-error"],
///                 "max_retries": 1,
///             },
///             "action": {
///                 "weighted_targets": [{
///                     "virtual_node": serviceb_aws_appmesh_virtual_node["name"],
///                     "weight": 100,
///                 }],
///             },
///         },
///     },
///     name="serviceB-route",
///     mesh_name=simple["id"],
///     virtual_router_name=serviceb_aws_appmesh_virtual_router["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb = new Aws.AppMesh.Route("serviceb", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
///         {
///             HttpRoute = new Aws.AppMesh.Inputs.RouteSpecHttpRouteArgs
///             {
///                 Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchArgs
///                 {
///                     Prefix = "/",
///                 },
///                 RetryPolicy = new Aws.AppMesh.Inputs.RouteSpecHttpRouteRetryPolicyArgs
///                 {
///                     PerRetryTimeout = new Aws.AppMesh.Inputs.RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs
///                     {
///                         Unit = "s",
///                         Value = 15,
///                     },
///                     HttpRetryEvents = new[]
///                     {
///                         "server-error",
///                     },
///                     MaxRetries = 1,
///                 },
///                 Action = new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionArgs
///                 {
///                     WeightedTargets = new[]
///                     {
///                         new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
///                         {
///                             VirtualNode = servicebAwsAppmeshVirtualNode.Name,
///                             Weight = 100,
///                         },
///                     },
///                 },
///             },
///         },
///         Name = "serviceB-route",
///         MeshName = simple.Id,
///         VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
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
/// 		_, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// 			Spec: &appmesh.RouteSpecArgs{
/// 				HttpRoute: &appmesh.RouteSpecHttpRouteArgs{
/// 					Match: &appmesh.RouteSpecHttpRouteMatchArgs{
/// 						Prefix: pulumi.String("/"),
/// 					},
/// 					RetryPolicy: &appmesh.RouteSpecHttpRouteRetryPolicyArgs{
/// 						PerRetryTimeout: &appmesh.RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs{
/// 							Unit:  pulumi.String("s"),
/// 							Value: pulumi.Int(15),
/// 						},
/// 						HttpRetryEvents: pulumi.StringArray{
/// 							pulumi.String("server-error"),
/// 						},
/// 						MaxRetries: pulumi.Int(1),
/// 					},
/// 					Action: &appmesh.RouteSpecHttpRouteActionArgs{
/// 						WeightedTargets: appmesh.RouteSpecHttpRouteActionWeightedTargetArray{
/// 							&appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// 								VirtualNode: pulumi.Any(servicebAwsAppmeshVirtualNode.Name),
/// 								Weight:      pulumi.Int(100),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("serviceB-route"),
/// 			MeshName:          pulumi.Any(simple.Id),
/// 			VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
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
/// resource "aws_appmesh_route" "serviceb" {
///   spec = {
///     http_route = {
///       match = {
///         prefix = "/"
///       }
///       retry_policy = {
///         per_retry_timeout = {
///           unit  = "s"
///           value = 15
///         }
///         http_retry_events = ["server-error"]
///         max_retries       = 1
///       }
///       action = {
///         weighted_targets = [{
///           "virtualNode" = servicebAwsAppmeshVirtualNode.name
///           "weight"      = 100
///         }]
///       }
///     }
///   }
///   name                = "serviceB-route"
///   mesh_name           = simple.id
///   virtual_router_name = servicebAwsAppmeshVirtualRouter.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteRetryPolicyArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionWeightedTargetArgs;
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
///         var serviceb = new Route("serviceb", RouteArgs.builder()
///             .spec(RouteSpecArgs.builder()
///                 .httpRoute(RouteSpecHttpRouteArgs.builder()
///                     .match(RouteSpecHttpRouteMatchArgs.builder()
///                         .prefix("/")
///                         .build())
///                     .retryPolicy(RouteSpecHttpRouteRetryPolicyArgs.builder()
///                         .perRetryTimeout(RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs.builder()
///                             .unit("s")
///                             .value(15)
///                             .build())
///                         .httpRetryEvents("server-error")
///                         .maxRetries(1)
///                         .build())
///                     .action(RouteSpecHttpRouteActionArgs.builder()
///                         .weightedTargets(RouteSpecHttpRouteActionWeightedTargetArgs.builder()
///                             .virtualNode(servicebAwsAppmeshVirtualNode.name())
///                             .weight(100)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceB-route")
///             .meshName(simple.id())
///             .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb:
///     type: aws:appmesh:Route
///     properties:
///       spec:
///         httpRoute:
///           match:
///             prefix: /
///           retryPolicy:
///             perRetryTimeout:
///               unit: s
///               value: 15
///             httpRetryEvents:
///               - server-error
///             maxRetries: 1
///           action:
///             weightedTargets:
///               - virtualNode: ${servicebAwsAppmeshVirtualNode.name}
///                 weight: 100
///       name: serviceB-route
///       meshName: ${simple.id}
///       virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// ```
///
///
/// ### TCP Routing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
///     spec: {
///         tcpRoute: {
///             action: {
///                 weightedTargets: [{
///                     virtualNode: serviceb1.name,
///                     weight: 100,
///                 }],
///             },
///         },
///     },
///     name: "serviceB-route",
///     meshName: simple.id,
///     virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
///     spec={
///         "tcp_route": {
///             "action": {
///                 "weighted_targets": [{
///                     "virtual_node": serviceb1["name"],
///                     "weight": 100,
///                 }],
///             },
///         },
///     },
///     name="serviceB-route",
///     mesh_name=simple["id"],
///     virtual_router_name=serviceb_aws_appmesh_virtual_router["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceb = new Aws.AppMesh.Route("serviceb", new()
///     {
///         Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
///         {
///             TcpRoute = new Aws.AppMesh.Inputs.RouteSpecTcpRouteArgs
///             {
///                 Action = new Aws.AppMesh.Inputs.RouteSpecTcpRouteActionArgs
///                 {
///                     WeightedTargets = new[]
///                     {
///                         new Aws.AppMesh.Inputs.RouteSpecTcpRouteActionWeightedTargetArgs
///                         {
///                             VirtualNode = serviceb1.Name,
///                             Weight = 100,
///                         },
///                     },
///                 },
///             },
///         },
///         Name = "serviceB-route",
///         MeshName = simple.Id,
///         VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
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
/// 		_, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// 			Spec: &appmesh.RouteSpecArgs{
/// 				TcpRoute: &appmesh.RouteSpecTcpRouteArgs{
/// 					Action: &appmesh.RouteSpecTcpRouteActionArgs{
/// 						WeightedTargets: appmesh.RouteSpecTcpRouteActionWeightedTargetArray{
/// 							&appmesh.RouteSpecTcpRouteActionWeightedTargetArgs{
/// 								VirtualNode: pulumi.Any(serviceb1.Name),
/// 								Weight:      pulumi.Int(100),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:              pulumi.String("serviceB-route"),
/// 			MeshName:          pulumi.Any(simple.Id),
/// 			VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
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
/// resource "aws_appmesh_route" "serviceb" {
///   spec = {
///     tcp_route = {
///       action = {
///         weighted_targets = [{
///           "virtualNode" = serviceb1.name
///           "weight"      = 100
///         }]
///       }
///     }
///   }
///   name                = "serviceB-route"
///   mesh_name           = simple.id
///   virtual_router_name = servicebAwsAppmeshVirtualRouter.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecTcpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecTcpRouteActionArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecTcpRouteActionWeightedTargetArgs;
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
///         var serviceb = new Route("serviceb", RouteArgs.builder()
///             .spec(RouteSpecArgs.builder()
///                 .tcpRoute(RouteSpecTcpRouteArgs.builder()
///                     .action(RouteSpecTcpRouteActionArgs.builder()
///                         .weightedTargets(RouteSpecTcpRouteActionWeightedTargetArgs.builder()
///                             .virtualNode(serviceb1.name())
///                             .weight(100)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .name("serviceB-route")
///             .meshName(simple.id())
///             .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb:
///     type: aws:appmesh:Route
///     properties:
///       spec:
///         tcpRoute:
///           action:
///             weightedTargets:
///               - virtualNode: ${serviceb1.name}
///                 weight: 100
///       name: serviceB-route
///       meshName: ${simple.id}
///       virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual routes using `meshName` and `virtualRouterName` together with the route's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/route:Route serviceb simpleapp/serviceB/serviceB-route
/// ```
class Route extends pulumi.CustomResource {
  /// ARN of the route.
  late final pulumi.Output<String> arn;
  /// Creation date of the route.
  late final pulumi.Output<String> createdDate;
  /// Last update date of the route.
  late final pulumi.Output<String> lastUpdatedDate;
  /// Name of the service mesh in which to create the route. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;
  /// Name to use for the route. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;
  /// Route specification to apply. See `spec` Block for details.
  late final pulumi.Output<RouteSpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the virtual router in which to create the route. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> virtualRouterName;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_appmesh_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/route:Route',
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
    spec = registerOutput<RouteSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualRouterName = registerOutput<String>('virtualRouterName');
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(
    String name,
    pulumi.Input<String> id, {
    RouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/route:Route',
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
    spec = registerOutput<RouteSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualRouterName = registerOutput<String>('virtualRouterName');
  }

  /// Creates a typed reference to an existing [Route] resource.
  Route.reference(String urn)
    : super(
        'aws:appmesh/route:Route',
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
    spec = registerOutput<RouteSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    virtualRouterName = registerOutput<String>('virtualRouterName');
  }
}
