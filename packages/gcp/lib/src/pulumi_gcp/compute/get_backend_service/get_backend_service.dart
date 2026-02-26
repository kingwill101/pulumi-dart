import 'package:pulumi/pulumi.dart';
import 'get_backend_service_args.dart';
import 'get_backend_service_result.dart';

/// Provide access to a Backend Service's attribute. For more information
/// see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/http/backend-service)
/// and the [API](https://cloud.google.com/compute/docs/reference/latest/backendServices).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const baz = gcp.compute.getBackendService({
/// name: "foobar",
/// });
/// const _default = new gcp.compute.BackendService("default", {
/// name: "backend-service",
/// healthChecks: baz.then(baz => baz.healthChecks?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// baz = gcp.compute.get_backend_service(name="foobar")
/// default = gcp.compute.BackendService("default",
/// name="backend-service",
/// health_checks=baz.health_checks[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var baz = Gcp.Compute.GetBackendService.Invoke(new()
/// {
/// Name = "foobar",
/// });
///
/// var @default = new Gcp.Compute.BackendService("default", new()
/// {
/// Name = "backend-service",
/// HealthChecks = baz.Apply(getBackendServiceResult => getBackendServiceResult.HealthChecks[0]),
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
/// baz, err := compute.LookupBackendService(ctx, &compute.LookupBackendServiceArgs{
/// Name: "foobar",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// Name:         pulumi.String("backend-service"),
/// HealthChecks: pulumi.String(baz.HealthChecks[0]),
/// })
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
/// import com.pulumi.gcp.compute.inputs.GetBackendServiceArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
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
/// final var baz = ComputeFunctions.getBackendService(GetBackendServiceArgs.builder()
/// .name("foobar")
/// .build());
///
/// var default_ = new BackendService("default", BackendServiceArgs.builder()
/// .name("backend-service")
/// .healthChecks(baz.healthChecks()[0])
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:BackendService
/// properties:
/// name: backend-service
/// healthChecks: ${baz.healthChecks[0]}
/// variables:
/// baz:
/// fn::invoke:
/// function: gcp:compute:getBackendService
/// arguments:
/// name: foobar
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBackendServiceResult> getBackendService(
  GetBackendServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendService:getBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult.fromMap(result);
}
