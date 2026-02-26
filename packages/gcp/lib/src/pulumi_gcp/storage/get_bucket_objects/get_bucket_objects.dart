import 'package:pulumi/pulumi.dart';
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';

/// Gets existing objects inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and [API](https://cloud.google.com/storage/docs/json_api/v1/objects/list).
///
/// ## Example Usage
///
/// Example files stored within a bucket.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const files = gcp.storage.getBucketObjects({
/// bucket: "file-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// files = gcp.storage.get_bucket_objects(bucket="file-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var files = Gcp.Storage.GetBucketObjects.Invoke(new()
/// {
/// Bucket = "file-store",
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
/// _, err := storage.GetBucketObjects(ctx, &storage.GetBucketObjectsArgs{
/// Bucket: "file-store",
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
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectsArgs;
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
/// final var files = StorageFunctions.getBucketObjects(GetBucketObjectsArgs.builder()
/// .bucket("file-store")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// files:
/// fn::invoke:
/// function: gcp:storage:getBucketObjects
/// arguments:
/// bucket: file-store
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketObjectsResult> getBucketObjects(
  GetBucketObjectsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjects:getBucketObjects',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectsResult.fromMap(result);
}
