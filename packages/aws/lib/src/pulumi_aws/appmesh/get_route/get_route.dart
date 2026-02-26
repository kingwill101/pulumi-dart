import 'package:pulumi/pulumi.dart';
import 'get_route_args.dart';
import 'get_route_result.dart';

/// The App Mesh Route data source allows details of an App Mesh Route to be retrieved by its name, mesh_name, virtual_router_name, and optionally the mesh_owner.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getRoute({
/// name: "test-route",
/// meshName: "test-mesh",
/// virtualRouterName: "test-router",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_route(name="test-route",
/// mesh_name="test-mesh",
/// virtual_router_name="test-router")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.AppMesh.GetRoute.Invoke(new()
/// {
/// Name = "test-route",
/// MeshName = "test-mesh",
/// VirtualRouterName = "test-router",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appmesh.LookupRoute(ctx, &appmesh.LookupRouteArgs{
/// Name:              "test-route",
/// MeshName:          "test-mesh",
/// VirtualRouterName: "test-router",
/// }, nil)
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
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetRouteArgs;
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
/// final var test = AppmeshFunctions.getRoute(GetRouteArgs.builder()
/// .name("test-route")
/// .meshName("test-mesh")
/// .virtualRouterName("test-router")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:appmesh:getRoute
/// arguments:
/// name: test-route
/// meshName: test-mesh
/// virtualRouterName: test-router
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getRoute:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}
