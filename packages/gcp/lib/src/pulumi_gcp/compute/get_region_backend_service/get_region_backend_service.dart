import 'package:pulumi/pulumi.dart';
import 'get_region_backend_service_args.dart';
import 'get_region_backend_service_result.dart';

/// Get information about a Regional Backend Service. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/load-balancing/internal/backend-service) and
/// [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionBackendServices).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myBackend = gcp.compute.getRegionBackendService({
/// name: "my-backend-service",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backend = gcp.compute.get_region_backend_service(name="my-backend-service",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myBackend = Gcp.Compute.GetRegionBackendService.Invoke(new()
/// {
/// Name = "my-backend-service",
/// Region = "us-central1",
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
/// _, err := compute.LookupRegionBackendService(ctx, &compute.LookupRegionBackendServiceArgs{
/// Name:   "my-backend-service",
/// Region: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.compute.inputs.GetRegionBackendServiceArgs;
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
/// final var myBackend = ComputeFunctions.getRegionBackendService(GetRegionBackendServiceArgs.builder()
/// .name("my-backend-service")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myBackend:
/// fn::invoke:
/// function: gcp:compute:getRegionBackendService
/// arguments:
/// name: my-backend-service
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionBackendServiceResult> getRegionBackendService(
  GetRegionBackendServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendService:getRegionBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult.fromMap(result);
}
