import 'package:pulumi/pulumi.dart';
import 'get_bucket_args.dart';
import 'get_bucket_result.dart';

/// Gets an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#buckets)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/buckets).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_bucket = gcp.storage.getBucket({
/// name: "my-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_bucket = gcp.storage.get_bucket(name="my-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_bucket = Gcp.Storage.GetBucket.Invoke(new()
/// {
/// Name = "my-bucket",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.LookupBucket(ctx, &storage.LookupBucketArgs{
/// Name: "my-bucket",
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetBucketArgs;
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
/// final var my-bucket = StorageFunctions.getBucket(GetBucketArgs.builder()
/// .name("my-bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-bucket:
/// fn::invoke:
/// function: gcp:storage:getBucket
/// arguments:
/// name: my-bucket
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucket:getBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}
