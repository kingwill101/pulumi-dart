import 'package:pulumi/pulumi.dart';
import 'get_virtual_service_args.dart';
import 'get_virtual_service_result.dart';

/// The App Mesh Virtual Service data source allows details of an App Mesh Virtual Service to be retrieved by its name, mesh_name, and optionally the mesh_owner.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appmesh.getVirtualService({
/// name: "example.mesh.local",
/// meshName: "example-mesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appmesh.get_virtual_service(name="example.mesh.local",
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
/// var test = Aws.AppMesh.GetVirtualService.Invoke(new()
/// {
/// Name = "example.mesh.local",
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
/// _, err := appmesh.LookupVirtualService(ctx, &appmesh.LookupVirtualServiceArgs{
/// Name:     "example.mesh.local",
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
/// import com.pulumi.aws.appmesh.inputs.GetVirtualServiceArgs;
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
/// final var test = AppmeshFunctions.getVirtualService(GetVirtualServiceArgs.builder()
/// .name("example.mesh.local")
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
/// function: aws:appmesh:getVirtualService
/// arguments:
/// name: example.mesh.local
/// meshName: example-mesh
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = current.then(current => aws.appmesh.getVirtualService({
/// name: "example.mesh.local",
/// meshName: "example-mesh",
/// meshOwner: current.accountId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.appmesh.get_virtual_service(name="example.mesh.local",
/// mesh_name="example-mesh",
/// mesh_owner=current.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var test = Aws.AppMesh.GetVirtualService.Invoke(new()
/// {
/// Name = "example.mesh.local",
/// MeshName = "example-mesh",
/// MeshOwner = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = appmesh.LookupVirtualService(ctx, &appmesh.LookupVirtualServiceArgs{
/// Name:      "example.mesh.local",
/// MeshName:  "example-mesh",
/// MeshOwner: pulumi.StringRef(current.AccountId),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.appmesh.AppmeshFunctions;
/// import com.pulumi.aws.appmesh.inputs.GetVirtualServiceArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var test = AppmeshFunctions.getVirtualService(GetVirtualServiceArgs.builder()
/// .name("example.mesh.local")
/// .meshName("example-mesh")
/// .meshOwner(current.accountId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// test:
/// fn::invoke:
/// function: aws:appmesh:getVirtualService
/// arguments:
/// name: example.mesh.local
/// meshName: example-mesh
/// meshOwner: ${current.accountId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVirtualServiceResult> getVirtualService(
  GetVirtualServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appmesh/getVirtualService:getVirtualService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVirtualServiceResult.fromMap(result);
}
