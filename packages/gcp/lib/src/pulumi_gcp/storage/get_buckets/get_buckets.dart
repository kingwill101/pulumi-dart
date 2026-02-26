import 'package:pulumi/pulumi.dart';
import 'get_buckets_args.dart';
import 'get_buckets_result.dart';

/// Gets a list of existing GCS buckets.
/// See [the official documentation](https://cloud.google.com/storage/docs/introduction)
/// and [API](https://cloud.google.com/storage/docs/json_api/v1/buckets/list).
///
/// ## Example Usage
///
/// Example GCS buckets.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.storage.getBuckets({
/// project: "example-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.storage.get_buckets(project="example-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.Storage.GetBuckets.Invoke(new()
/// {
/// Project = "example-project",
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
/// _, err := storage.GetBuckets(ctx, &storage.GetBucketsArgs{
/// Project: pulumi.StringRef("example-project"),
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
/// import com.pulumi.gcp.storage.inputs.GetBucketsArgs;
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
/// final var example = StorageFunctions.getBuckets(GetBucketsArgs.builder()
/// .project("example-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:storage:getBuckets
/// arguments:
/// project: example-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketsResult> getBuckets(
  GetBucketsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBuckets:getBuckets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketsResult.fromMap(result);
}
