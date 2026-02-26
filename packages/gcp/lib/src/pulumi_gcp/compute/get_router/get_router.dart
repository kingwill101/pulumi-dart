import 'package:pulumi/pulumi.dart';
import 'get_router_args.dart';
import 'get_router_result.dart';

/// Get a router within GCE from its name and VPC.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_router = gcp.compute.getRouter({
/// name: "myrouter-us-east1",
/// network: "my-network",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_router = gcp.compute.get_router(name="myrouter-us-east1",
/// network="my-network")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_router = Gcp.Compute.GetRouter.Invoke(new()
/// {
/// Name = "myrouter-us-east1",
/// Network = "my-network",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupRouter(ctx, &compute.LookupRouterArgs{
/// Name:    "myrouter-us-east1",
/// Network: "my-network",
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRouterArgs;
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
/// final var my-router = ComputeFunctions.getRouter(GetRouterArgs.builder()
/// .name("myrouter-us-east1")
/// .network("my-network")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-router:
/// fn::invoke:
/// function: gcp:compute:getRouter
/// arguments:
/// name: myrouter-us-east1
/// network: my-network
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRouterResult> getRouter(
  GetRouterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouter:getRouter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterResult.fromMap(result);
}
