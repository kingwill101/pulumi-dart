import 'package:pulumi/pulumi.dart';
import 'router_status_args.dart';
import 'router_status_result.dart';

/// Get a Cloud Router's status within GCE from its name and region. This data source exposes the
/// routes learned by a Cloud Router via BGP peers.
///
/// For more information see [the official documentation](https://cloud.google.com/network-connectivity/docs/router/how-to/viewing-router-details)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/getRouterStatus).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_router = gcp.compute.getRouterStatus({
/// name: "myrouter",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_router = gcp.compute.get_router_status(name="myrouter")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_router = Gcp.Compute.GetRouterStatus.Invoke(new()
/// {
/// Name = "myrouter",
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
/// _, err := compute.GetRouterStatus(ctx, &compute.GetRouterStatusArgs{
/// Name: "myrouter",
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
/// import com.pulumi.gcp.compute.inputs.GetRouterStatusArgs;
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
/// final var my-router = ComputeFunctions.getRouterStatus(GetRouterStatusArgs.builder()
/// .name("myrouter")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-router:
/// fn::invoke:
/// function: gcp:compute:getRouterStatus
/// arguments:
/// name: myrouter
/// ```
/// <!--End PulumiCodeChooser -->
Future<RouterStatusResult> routerStatus(
  RouterStatusArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/routerStatus:RouterStatus',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return RouterStatusResult.fromMap(result);
}
