import 'package:pulumi/pulumi.dart';
import 'get_gateway_route_args.dart';
import 'get_gateway_route_result.dart';

/// The App Mesh Gateway Route data source allows details of an App Mesh Gateway Route to be retrieved by its name, mesh_name, virtual_gateway_name, and optionally the mesh_owner.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getGatewayRoute({
/// name: "test-route",
/// meshName: "test-mesh",
/// virtualGatewayName: "test-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_gateway_route(name="test-route",
/// mesh_name="test-mesh",
/// virtual_gateway_name="test-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.AppMesh.GetGatewayRoute.Invoke(new()
/// {
/// Name = "test-route",
/// MeshName = "test-mesh",
/// VirtualGatewayName = "test-gateway",
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
/// _, err := appmesh.LookupGatewayRoute(ctx, &appmesh.LookupGatewayRouteArgs{
/// Name:               "test-route",
/// MeshName:           "test-mesh",
/// VirtualGatewayName: "test-gateway",
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
/// import com.pulumi.aws.appmesh.inputs.GetGatewayRouteArgs;
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
/// final var test = AppmeshFunctions.getGatewayRoute(GetGatewayRouteArgs.builder()
/// .name("test-route")
/// .meshName("test-mesh")
/// .virtualGatewayName("test-gateway")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:appmesh:getGatewayRoute
/// arguments:
/// name: test-route
/// meshName: test-mesh
/// virtualGatewayName: test-gateway
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGatewayRouteResult> getGatewayRoute(
  GetGatewayRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getGatewayRoute:getGatewayRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGatewayRouteResult.fromMap(result);
}
