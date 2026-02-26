import 'package:pulumi/pulumi.dart';
import 'get_virtual_node_args.dart';
import 'get_virtual_node_result.dart';

/// Data source for managing an AWS App Mesh Virtual Node.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getVirtualNode({
/// name: "serviceBv1",
/// meshName: "example-mesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_virtual_node(name="serviceBv1",
/// mesh_name="example-mesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.AppMesh.GetVirtualNode.Invoke(new()
/// {
/// Name = "serviceBv1",
/// MeshName = "example-mesh",
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
/// _, err := appmesh.LookupVirtualNode(ctx, &appmesh.LookupVirtualNodeArgs{
/// Name:     "serviceBv1",
/// MeshName: "example-mesh",
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
/// import com.pulumi.aws.appmesh.inputs.GetVirtualNodeArgs;
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
/// final var test = AppmeshFunctions.getVirtualNode(GetVirtualNodeArgs.builder()
/// .name("serviceBv1")
/// .meshName("example-mesh")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:appmesh:getVirtualNode
/// arguments:
/// name: serviceBv1
/// meshName: example-mesh
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVirtualNodeResult> getVirtualNode(
  GetVirtualNodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualNode:getVirtualNode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualNodeResult.fromMap(result);
}
