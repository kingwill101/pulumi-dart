import 'package:pulumi/pulumi.dart';
import 'get_health_check_args.dart';
import 'get_health_check_result.dart';

/// Get information about a HealthCheck.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const healthCheck = gcp.compute.getHealthCheck({
/// name: "my-hc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.get_health_check(name="my-hc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var healthCheck = Gcp.Compute.GetHealthCheck.Invoke(new()
/// {
/// Name = "my-hc",
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
/// _, err := compute.LookupHealthCheck(ctx, &compute.LookupHealthCheckArgs{
/// Name: "my-hc",
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
/// import com.pulumi.gcp.compute.inputs.GetHealthCheckArgs;
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
/// final var healthCheck = ComputeFunctions.getHealthCheck(GetHealthCheckArgs.builder()
/// .name("my-hc")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// healthCheck:
/// fn::invoke:
/// function: gcp:compute:getHealthCheck
/// arguments:
/// name: my-hc
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetHealthCheckResult> getHealthCheck(
  GetHealthCheckArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHealthCheck:getHealthCheck',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult.fromMap(result);
}
