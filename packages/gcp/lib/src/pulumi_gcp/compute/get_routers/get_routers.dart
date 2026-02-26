import 'package:pulumi/pulumi.dart';
import 'get_routers_args.dart';
import 'get_routers_result.dart';

/// Get a list of routers. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/routers/list) documentation.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getRouters({
/// project: foobar.project,
/// region: foobar.region,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_routers(project=foobar["project"],
/// region=foobar["region"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Gcp.Compute.GetRouters.Invoke(new()
/// {
/// Project = foobar.Project,
/// Region = foobar.Region,
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
/// _, err := compute.GetRouters(ctx, &compute.GetRoutersArgs{
/// Project: pulumi.StringRef(foobar.Project),
/// Region:  pulumi.StringRef(foobar.Region),
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
/// import com.pulumi.gcp.compute.inputs.GetRoutersArgs;
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
/// final var all = ComputeFunctions.getRouters(GetRoutersArgs.builder()
/// .project(foobar.project())
/// .region(foobar.region())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: gcp:compute:getRouters
/// arguments:
/// project: ${foobar.project}
/// region: ${foobar.region}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRoutersResult> getRouters(
  GetRoutersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRouters:getRouters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRoutersResult.fromMap(result);
}
