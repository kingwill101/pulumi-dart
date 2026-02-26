import 'package:pulumi/pulumi.dart';
import 'get_router_nat_args.dart';
import 'get_router_nat_result.dart';

/// To get more information about RouterNat, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.compute.getRouterNat({
/// name: "my-nat",
/// router: "my-router",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.compute.get_router_nat(name="my-nat",
/// router="my-router")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Compute.GetRouterNat.Invoke(new()
/// {
/// Name = "my-nat",
/// Router = "my-router",
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
/// _, err := compute.LookupRouterNat(ctx, &compute.LookupRouterNatArgs{
/// Name:   "my-nat",
/// Router: "my-router",
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
/// import com.pulumi.gcp.compute.inputs.GetRouterNatArgs;
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
/// final var foo = ComputeFunctions.getRouterNat(GetRouterNatArgs.builder()
/// .name("my-nat")
/// .router("my-router")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:compute:getRouterNat
/// arguments:
/// name: my-nat
/// router: my-router
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRouterNatResult> getRouterNat(
  GetRouterNatArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouterNat:getRouterNat',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterNatResult.fromMap(result);
}
