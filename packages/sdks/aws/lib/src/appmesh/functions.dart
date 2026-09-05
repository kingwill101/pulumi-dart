import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_args.dart';
import 'get_gateway_route_result.dart';
import 'get_mesh_args.dart';
import 'get_mesh_result.dart';
import 'get_route_args.dart';
import 'get_route_result.dart';
import 'get_virtual_gateway_args.dart';
import 'get_virtual_gateway_result.dart';
import 'get_virtual_node_args.dart';
import 'get_virtual_node_result.dart';
import 'get_virtual_router_args.dart';
import 'get_virtual_router_result.dart';
import 'get_virtual_service_args.dart';
import 'get_virtual_service_result.dart';

/// The App Mesh Gateway Route data source allows details of an App Mesh Gateway Route to be retrieved by its name, mesh_name, virtual_gateway_name, and optionally the mesh_owner.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getGatewayRoute({
///     name: "test-route",
///     meshName: "test-mesh",
///     virtualGatewayName: "test-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_gateway_route(name="test-route",
///     mesh_name="test-mesh",
///     virtual_gateway_name="test-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.AppMesh.GetGatewayRoute.Invoke(new()
///     {
///         Name = "test-route",
///         MeshName = "test-mesh",
///         VirtualGatewayName = "test-gateway",
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
/// 		_, err := appmesh.LookupGatewayRoute(ctx, &appmesh.LookupGatewayRouteArgs{
/// 			Name:               "test-route",
/// 			MeshName:           "test-mesh",
/// 			VirtualGatewayName: "test-gateway",
/// 		}, nil)
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
/// data "aws_appmesh_getgatewayroute" "test" {
///   name                 = "test-route"
///   mesh_name            = "test-mesh"
///   virtual_gateway_name = "test-gateway"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetGatewayRouteArgs;
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
///         final var test = AppmeshFunctions.getGatewayRoute(GetGatewayRouteArgs.builder()
///             .name("test-route")
///             .meshName("test-mesh")
///             .virtualGatewayName("test-gateway")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:appmesh:getGatewayRoute
///       arguments:
///         name: test-route
///         meshName: test-mesh
///         virtualGatewayName: test-gateway
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_gateway_route_get_gateway_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayRouteResult> getGatewayRoute(
  GetGatewayRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getGatewayRoute:getGatewayRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayRouteResult.fromMap(result);
}

pulumi.Output<GetGatewayRouteResult> getGatewayRouteOutput(
  GetGatewayRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getGatewayRoute:getGatewayRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayRouteResult.fromMap);
}

/// The App Mesh Mesh data source allows details of an App Mesh Mesh to be retrieved by its name and optionally the mesh_owner.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const simple = aws.appmesh.getMesh({
///     name: "simpleapp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// simple = aws.appmesh.get_mesh(name="simpleapp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var simple = Aws.AppMesh.GetMesh.Invoke(new()
///     {
///         Name = "simpleapp",
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
/// 		_, err := appmesh.LookupMesh(ctx, &appmesh.LookupMeshArgs{
/// 			Name: "simpleapp",
/// 		}, nil)
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
/// data "aws_appmesh_getmesh" "simple" {
///   name = "simpleapp"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetMeshArgs;
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
///         final var simple = AppmeshFunctions.getMesh(GetMeshArgs.builder()
///             .name("simpleapp")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   simple:
///     fn::invoke:
///       function: aws:appmesh:getMesh
///       arguments:
///         name: simpleapp
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const simple = current.then(current => aws.appmesh.getMesh({
///     name: "simpleapp",
///     meshOwner: current.accountId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// simple = aws.appmesh.get_mesh(name="simpleapp",
///     mesh_owner=current.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var simple = Aws.AppMesh.GetMesh.Invoke(new()
///     {
///         Name = "simpleapp",
///         MeshOwner = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appmesh.LookupMesh(ctx, &appmesh.LookupMeshArgs{
/// 			Name:      "simpleapp",
/// 			MeshOwner: pulumi.StringRef(current.AccountId),
/// 		}, nil)
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_appmesh_getmesh" "simple" {
///   name       = "simpleapp"
///   mesh_owner = data.aws_getcalleridentity.current.account_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetMeshArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var simple = AppmeshFunctions.getMesh(GetMeshArgs.builder()
///             .name("simpleapp")
///             .meshOwner(current.accountId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   simple:
///     fn::invoke:
///       function: aws:appmesh:getMesh
///       arguments:
///         name: simpleapp
///         meshOwner: ${current.accountId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_mesh_get_mesh_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshResult> getMesh(
  GetMeshArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getMesh:getMesh',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshResult.fromMap(result);
}

pulumi.Output<GetMeshResult> getMeshOutput(
  GetMeshArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getMesh:getMesh',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMeshResult.fromMap);
}

/// The App Mesh Route data source allows details of an App Mesh Route to be retrieved by its name, mesh_name, virtual_router_name, and optionally the mesh_owner.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getRoute({
///     name: "test-route",
///     meshName: "test-mesh",
///     virtualRouterName: "test-router",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_route(name="test-route",
///     mesh_name="test-mesh",
///     virtual_router_name="test-router")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.AppMesh.GetRoute.Invoke(new()
///     {
///         Name = "test-route",
///         MeshName = "test-mesh",
///         VirtualRouterName = "test-router",
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
/// 		_, err := appmesh.LookupRoute(ctx, &appmesh.LookupRouteArgs{
/// 			Name:              "test-route",
/// 			MeshName:          "test-mesh",
/// 			VirtualRouterName: "test-router",
/// 		}, nil)
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
/// data "aws_appmesh_getroute" "test" {
///   name                = "test-route"
///   mesh_name           = "test-mesh"
///   virtual_router_name = "test-router"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetRouteArgs;
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
///         final var test = AppmeshFunctions.getRoute(GetRouteArgs.builder()
///             .name("test-route")
///             .meshName("test-mesh")
///             .virtualRouterName("test-router")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:appmesh:getRoute
///       arguments:
///         name: test-route
///         meshName: test-mesh
///         virtualRouterName: test-router
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_route_get_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getRoute:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}

pulumi.Output<GetRouteResult> getRouteOutput(
  GetRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getRoute:getRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteResult.fromMap);
}

/// Data source for managing an AWS App Mesh Virtual Gateway.
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
/// const example = aws.appmesh.getVirtualGateway({
///     meshName: "mesh-gateway",
///     name: "example-mesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appmesh.get_virtual_gateway(mesh_name="mesh-gateway",
///     name="example-mesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.AppMesh.GetVirtualGateway.Invoke(new()
///     {
///         MeshName = "mesh-gateway",
///         Name = "example-mesh",
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
/// 		_, err := appmesh.LookupVirtualGateway(ctx, &appmesh.LookupVirtualGatewayArgs{
/// 			MeshName: "mesh-gateway",
/// 			Name:     "example-mesh",
/// 		}, nil)
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
/// data "aws_appmesh_getvirtualgateway" "example" {
///   mesh_name = "mesh-gateway"
///   name      = "example-mesh"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetVirtualGatewayArgs;
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
///         final var example = AppmeshFunctions.getVirtualGateway(GetVirtualGatewayArgs.builder()
///             .meshName("mesh-gateway")
///             .name("example-mesh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:appmesh:getVirtualGateway
///       arguments:
///         meshName: mesh-gateway
///         name: example-mesh
/// ```
///
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_appmesh_getvirtualgateway" "test" {
///   name       = "example.mesh.local"
///   mesh_name  = "example-mesh"
///   mesh_owner = data.aws_getcalleridentity.current.account_id
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   test:
///     fn::invoke:
///       function: aws:appmesh:getVirtualGateway
///       arguments:
///         name: example.mesh.local
///         meshName: example-mesh
///         meshOwner: ${current.accountId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_virtual_gateway_get_virtual_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualGatewayResult> getVirtualGateway(
  GetVirtualGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualGateway:getVirtualGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualGatewayResult.fromMap(result);
}

pulumi.Output<GetVirtualGatewayResult> getVirtualGatewayOutput(
  GetVirtualGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getVirtualGateway:getVirtualGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualGatewayResult.fromMap);
}

/// Data source for managing an AWS App Mesh Virtual Node.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getVirtualNode({
///     name: "serviceBv1",
///     meshName: "example-mesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_virtual_node(name="serviceBv1",
///     mesh_name="example-mesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.AppMesh.GetVirtualNode.Invoke(new()
///     {
///         Name = "serviceBv1",
///         MeshName = "example-mesh",
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
/// 		_, err := appmesh.LookupVirtualNode(ctx, &appmesh.LookupVirtualNodeArgs{
/// 			Name:     "serviceBv1",
/// 			MeshName: "example-mesh",
/// 		}, nil)
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
/// data "aws_appmesh_getvirtualnode" "test" {
///   name      = "serviceBv1"
///   mesh_name = "example-mesh"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetVirtualNodeArgs;
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
///         final var test = AppmeshFunctions.getVirtualNode(GetVirtualNodeArgs.builder()
///             .name("serviceBv1")
///             .meshName("example-mesh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:appmesh:getVirtualNode
///       arguments:
///         name: serviceBv1
///         meshName: example-mesh
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_virtual_node_get_virtual_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNodeResult> getVirtualNode(
  GetVirtualNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualNode:getVirtualNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNodeResult.fromMap(result);
}

pulumi.Output<GetVirtualNodeResult> getVirtualNodeOutput(
  GetVirtualNodeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getVirtualNode:getVirtualNode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNodeResult.fromMap);
}

/// The App Mesh Virtual Router data source allows details of an App Mesh Virtual Service to be retrieved by its name and mesh_name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getVirtualRouter({
///     name: "example-router-name",
///     meshName: "example-mesh-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_virtual_router(name="example-router-name",
///     mesh_name="example-mesh-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.AppMesh.GetVirtualRouter.Invoke(new()
///     {
///         Name = "example-router-name",
///         MeshName = "example-mesh-name",
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
/// 		_, err := appmesh.LookupVirtualRouter(ctx, &appmesh.LookupVirtualRouterArgs{
/// 			Name:     "example-router-name",
/// 			MeshName: "example-mesh-name",
/// 		}, nil)
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
/// data "aws_appmesh_getvirtualrouter" "test" {
///   name      = "example-router-name"
///   mesh_name = "example-mesh-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetVirtualRouterArgs;
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
///         final var test = AppmeshFunctions.getVirtualRouter(GetVirtualRouterArgs.builder()
///             .name("example-router-name")
///             .meshName("example-mesh-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:appmesh:getVirtualRouter
///       arguments:
///         name: example-router-name
///         meshName: example-mesh-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_virtual_router_get_virtual_router_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualRouterResult> getVirtualRouter(
  GetVirtualRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualRouter:getVirtualRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualRouterResult.fromMap(result);
}

pulumi.Output<GetVirtualRouterResult> getVirtualRouterOutput(
  GetVirtualRouterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getVirtualRouter:getVirtualRouter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualRouterResult.fromMap);
}

/// The App Mesh Virtual Service data source allows details of an App Mesh Virtual Service to be retrieved by its name, mesh_name, and optionally the mesh_owner.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getVirtualService({
///     name: "example.mesh.local",
///     meshName: "example-mesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_virtual_service(name="example.mesh.local",
///     mesh_name="example-mesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.AppMesh.GetVirtualService.Invoke(new()
///     {
///         Name = "example.mesh.local",
///         MeshName = "example-mesh",
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
/// 		_, err := appmesh.LookupVirtualService(ctx, &appmesh.LookupVirtualServiceArgs{
/// 			Name:     "example.mesh.local",
/// 			MeshName: "example-mesh",
/// 		}, nil)
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
/// data "aws_appmesh_getvirtualservice" "test" {
///   name      = "example.mesh.local"
///   mesh_name = "example-mesh"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetVirtualServiceArgs;
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
///         final var test = AppmeshFunctions.getVirtualService(GetVirtualServiceArgs.builder()
///             .name("example.mesh.local")
///             .meshName("example-mesh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:appmesh:getVirtualService
///       arguments:
///         name: example.mesh.local
///         meshName: example-mesh
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = current.then(current => aws.appmesh.getVirtualService({
///     name: "example.mesh.local",
///     meshName: "example-mesh",
///     meshOwner: current.accountId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.appmesh.get_virtual_service(name="example.mesh.local",
///     mesh_name="example-mesh",
///     mesh_owner=current.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var test = Aws.AppMesh.GetVirtualService.Invoke(new()
///     {
///         Name = "example.mesh.local",
///         MeshName = "example-mesh",
///         MeshOwner = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appmesh.LookupVirtualService(ctx, &appmesh.LookupVirtualServiceArgs{
/// 			Name:      "example.mesh.local",
/// 			MeshName:  "example-mesh",
/// 			MeshOwner: pulumi.StringRef(current.AccountId),
/// 		}, nil)
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_appmesh_getvirtualservice" "test" {
///   name       = "example.mesh.local"
///   mesh_name  = "example-mesh"
///   mesh_owner = data.aws_getcalleridentity.current.account_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetVirtualServiceArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var test = AppmeshFunctions.getVirtualService(GetVirtualServiceArgs.builder()
///             .name("example.mesh.local")
///             .meshName("example-mesh")
///             .meshOwner(current.accountId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   test:
///     fn::invoke:
///       function: aws:appmesh:getVirtualService
///       arguments:
///         name: example.mesh.local
///         meshName: example-mesh
///         meshOwner: ${current.accountId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_appmesh_get_virtual_service_get_virtual_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualServiceResult> getVirtualService(
  GetVirtualServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualService:getVirtualService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualServiceResult.fromMap(result);
}

pulumi.Output<GetVirtualServiceResult> getVirtualServiceOutput(
  GetVirtualServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:appmesh/getVirtualService:getVirtualService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualServiceResult.fromMap);
}
