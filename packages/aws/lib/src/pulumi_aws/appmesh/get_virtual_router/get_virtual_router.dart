import 'package:pulumi/pulumi.dart';
import 'get_virtual_router_args.dart';
import 'get_virtual_router_result.dart';

/// The App Mesh Virtual Router data source allows details of an App Mesh Virtual Service to be retrieved by its name and mesh_name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getVirtualRouter({
/// name: "example-router-name",
/// meshName: "example-mesh-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_virtual_router(name="example-router-name",
/// mesh_name="example-mesh-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.AppMesh.GetVirtualRouter.Invoke(new()
/// {
/// Name = "example-router-name",
/// MeshName = "example-mesh-name",
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
/// _, err := appmesh.LookupVirtualRouter(ctx, &appmesh.LookupVirtualRouterArgs{
/// Name:     "example-router-name",
/// MeshName: "example-mesh-name",
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
/// import com.pulumi.aws.appmesh.inputs.GetVirtualRouterArgs;
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
/// final var test = AppmeshFunctions.getVirtualRouter(GetVirtualRouterArgs.builder()
/// .name("example-router-name")
/// .meshName("example-mesh-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:appmesh:getVirtualRouter
/// arguments:
/// name: example-router-name
/// meshName: example-mesh-name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVirtualRouterResult> getVirtualRouter(
  GetVirtualRouterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualRouter:getVirtualRouter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualRouterResult.fromMap(result);
}
