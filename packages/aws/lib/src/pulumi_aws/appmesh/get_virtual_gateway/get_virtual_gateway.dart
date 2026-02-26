import 'package:pulumi/pulumi.dart';
import 'get_virtual_gateway_args.dart';
import 'get_virtual_gateway_result.dart';

/// Data source for managing an AWS App Mesh Virtual Gateway.
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
/// const example = aws.appmesh.getVirtualGateway({
/// meshName: "mesh-gateway",
/// name: "example-mesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appmesh.get_virtual_gateway(mesh_name="mesh-gateway",
/// name="example-mesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.AppMesh.GetVirtualGateway.Invoke(new()
/// {
/// MeshName = "mesh-gateway",
/// Name = "example-mesh",
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
/// _, err := appmesh.LookupVirtualGateway(ctx, &appmesh.LookupVirtualGatewayArgs{
/// MeshName: "mesh-gateway",
/// Name:     "example-mesh",
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
/// import com.pulumi.aws.appmesh.inputs.GetVirtualGatewayArgs;
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
/// final var example = AppmeshFunctions.getVirtualGateway(GetVirtualGatewayArgs.builder()
/// .meshName("mesh-gateway")
/// .name("example-mesh")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:appmesh:getVirtualGateway
/// arguments:
/// meshName: mesh-gateway
/// name: example-mesh
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// test:
/// fn::invoke:
/// function: aws:appmesh:getVirtualGateway
/// arguments:
/// name: example.mesh.local
/// meshName: example-mesh
/// meshOwner: ${current.accountId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVirtualGatewayResult> getVirtualGateway(
  GetVirtualGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualGateway:getVirtualGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualGatewayResult.fromMap(result);
}
