import 'package:pulumi/pulumi.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// Get information about a Google Cloud Run Service. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const run_service = gcp.cloudrun.getService({
/// name: "my-service",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// run_service = gcp.cloudrun.get_service(name="my-service",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var run_service = Gcp.CloudRun.GetService.Invoke(new()
/// {
/// Name = "my-service",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrun.LookupService(ctx, &cloudrun.LookupServiceArgs{
/// Name:     "my-service",
/// Location: "us-central1",
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
/// import com.pulumi.gcp.cloudrun.CloudrunFunctions;
/// import com.pulumi.gcp.cloudrun.inputs.GetServiceArgs;
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
/// final var run-service = CloudrunFunctions.getService(GetServiceArgs.builder()
/// .name("my-service")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// run-service:
/// fn::invoke:
/// function: gcp:cloudrun:getService
/// arguments:
/// name: my-service
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
