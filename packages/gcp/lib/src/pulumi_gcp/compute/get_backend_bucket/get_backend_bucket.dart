import 'package:pulumi/pulumi.dart';
import 'get_backend_bucket_args.dart';
import 'get_backend_bucket_result.dart';

/// Get information about a BackendBucket.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_backend_bucket = gcp.compute.getBackendBucket({
/// name: "my-backend",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_backend_bucket = gcp.compute.get_backend_bucket(name="my-backend")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_backend_bucket = Gcp.Compute.GetBackendBucket.Invoke(new()
/// {
/// Name = "my-backend",
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
/// _, err := compute.LookupBackendBucket(ctx, &compute.LookupBackendBucketArgs{
/// Name: "my-backend",
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
/// import com.pulumi.gcp.compute.inputs.GetBackendBucketArgs;
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
/// final var my-backend-bucket = ComputeFunctions.getBackendBucket(GetBackendBucketArgs.builder()
/// .name("my-backend")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-backend-bucket:
/// fn::invoke:
/// function: gcp:compute:getBackendBucket
/// arguments:
/// name: my-backend
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBackendBucketResult> getBackendBucket(
  GetBackendBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendBucket:getBackendBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult.fromMap(result);
}
