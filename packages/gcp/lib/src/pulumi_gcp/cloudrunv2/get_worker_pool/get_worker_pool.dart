import 'package:pulumi/pulumi.dart';
import 'get_worker_pool_args.dart';
import 'get_worker_pool_result.dart';

/// Get information about a Google Cloud Run v2 Worker Pool. For more information see
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
/// const myWorkerPool = gcp.cloudrunv2.getWorkerPool({
/// name: "my-worker-pool",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_worker_pool = gcp.cloudrunv2.get_worker_pool(name="my-worker-pool",
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
/// var myWorkerPool = Gcp.CloudRunV2.GetWorkerPool.Invoke(new()
/// {
/// Name = "my-worker-pool",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrunv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudrunv2.LookupWorkerPool(ctx, &cloudrunv2.LookupWorkerPoolArgs{
/// Name:     "my-worker-pool",
/// Location: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.cloudrunv2.Cloudrunv2Functions;
/// import com.pulumi.gcp.cloudrunv2.inputs.GetWorkerPoolArgs;
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
/// final var myWorkerPool = Cloudrunv2Functions.getWorkerPool(GetWorkerPoolArgs.builder()
/// .name("my-worker-pool")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myWorkerPool:
/// fn::invoke:
/// function: gcp:cloudrunv2:getWorkerPool
/// arguments:
/// name: my-worker-pool
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWorkerPoolResult> getWorkerPool(
  GetWorkerPoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getWorkerPool:getWorkerPool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerPoolResult.fromMap(result);
}
