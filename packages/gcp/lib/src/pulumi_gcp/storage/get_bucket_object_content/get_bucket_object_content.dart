import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_content_args.dart';
import 'get_bucket_object_content_result.dart';

/// Gets an existing object content inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
/// > **Warning:** The object content will be saved in the state, and visible to everyone who has access to the state file.
///
/// ## Example Usage
///
/// Example file object  stored within a folder.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const key = gcp.storage.getBucketObjectContent({
/// name: "encryptedkey",
/// bucket: "keystore",
/// });
/// export const encrypted = key.then(key => key.content);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key = gcp.storage.get_bucket_object_content(name="encryptedkey",
/// bucket="keystore")
/// pulumi.export("encrypted", key.content)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var key = Gcp.Storage.GetBucketObjectContent.Invoke(new()
/// {
/// Name = "encryptedkey",
/// Bucket = "keystore",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["encrypted"] = key.Apply(getBucketObjectContentResult => getBucketObjectContentResult.Content),
/// };
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
/// key, err := storage.GetBucketObjectContent(ctx, &storage.GetBucketObjectContentArgs{
/// Name:   "encryptedkey",
/// Bucket: "keystore",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("encrypted", key.Content)
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
/// import com.pulumi.gcp.storage.inputs.GetBucketObjectContentArgs;
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
/// final var key = StorageFunctions.getBucketObjectContent(GetBucketObjectContentArgs.builder()
/// .name("encryptedkey")
/// .bucket("keystore")
/// .build());
///
/// ctx.export("encrypted", key.content());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// key:
/// fn::invoke:
/// function: gcp:storage:getBucketObjectContent
/// arguments:
/// name: encryptedkey
/// bucket: keystore
/// outputs:
/// encrypted: ${key.content}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketObjectContentResult> getBucketObjectContent(
  GetBucketObjectContentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjectContent:getBucketObjectContent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectContentResult.fromMap(result);
}
