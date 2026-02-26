import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_result.dart';

/// Gets an existing object inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
///
/// ## Example Usage
///
/// Example picture stored within a folder.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const picture = gcp.storage.getBucketObject({
/// name: "folder/butterfly01.jpg",
/// bucket: "image-store",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// picture = gcp.storage.get_bucket_object(name="folder/butterfly01.jpg",
/// bucket="image-store")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var picture = Gcp.Storage.GetBucketObject.Invoke(new()
/// {
/// Name = "folder/butterfly01.jpg",
/// Bucket = "image-store",
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
/// _, err := storage.LookupBucketObject(ctx, &storage.LookupBucketObjectArgs{
/// Name:   pulumi.StringRef("folder/butterfly01.jpg"),
/// Bucket: pulumi.StringRef("image-store"),
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
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectArgs;
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
/// final var picture = StorageFunctions.getBucketObject(GetBucketObjectArgs.builder()
/// .name("folder/butterfly01.jpg")
/// .bucket("image-store")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// picture:
/// fn::invoke:
/// function: gcp:storage:getBucketObject
/// arguments:
/// name: folder/butterfly01.jpg
/// bucket: image-store
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObject:getBucketObject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}
