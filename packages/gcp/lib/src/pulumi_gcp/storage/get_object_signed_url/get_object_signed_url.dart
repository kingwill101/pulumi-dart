import 'package:pulumi/pulumi.dart';
import 'get_object_signed_url_args.dart';
import 'get_object_signed_url_result.dart';

/// The Google Cloud storage signed URL data source generates a signed URL for a given storage object. Signed URLs provide a way to give time-limited read or write access to anyone in possession of the URL, regardless of whether they have a Google account.
///
/// For more info about signed URL's is available [here](https://cloud.google.com/storage/docs/access-control/signed-urls).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const artifact = gcp.storage.getObjectSignedUrl({
/// bucket: "install_binaries",
/// path: "path/to/install_file.bin",
/// });
/// const vm = new gcp.compute.Instance("vm", {name: "vm"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// artifact = gcp.storage.get_object_signed_url(bucket="install_binaries",
/// path="path/to/install_file.bin")
/// vm = gcp.compute.Instance("vm", name="vm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var artifact = Gcp.Storage.GetObjectSignedUrl.Invoke(new()
/// {
/// Bucket = "install_binaries",
/// Path = "path/to/install_file.bin",
/// });
///
/// var vm = new Gcp.Compute.Instance("vm", new()
/// {
/// Name = "vm",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.GetObjectSignedUrl(ctx, &storage.GetObjectSignedUrlArgs{
/// Bucket: "install_binaries",
/// Path:   "path/to/install_file.bin",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "vm", &compute.InstanceArgs{
/// Name: pulumi.String("vm"),
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetObjectSignedUrlArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
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
/// final var artifact = StorageFunctions.getObjectSignedUrl(GetObjectSignedUrlArgs.builder()
/// .bucket("install_binaries")
/// .path("path/to/install_file.bin")
/// .build());
///
/// var vm = new Instance("vm", InstanceArgs.builder()
/// .name("vm")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// vm:
/// type: gcp:compute:Instance
/// properties:
/// name: vm
/// variables:
/// artifact:
/// fn::invoke:
/// function: gcp:storage:getObjectSignedUrl
/// arguments:
/// bucket: install_binaries
/// path: path/to/install_file.bin
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Full Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const getUrl = std.file({
/// input: "path/to/credentials.json",
/// }).then(invoke => gcp.storage.getObjectSignedUrl({
/// bucket: "fried_chicken",
/// path: "path/to/file",
/// contentMd5: "pRviqwS4c4OTJRTe03FD1w==",
/// contentType: "text/plain",
/// duration: "2d",
/// credentials: invoke.result,
/// extensionHeaders: {
/// "x-goog-if-generation-match": "1",
/// },
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// get_url = gcp.storage.get_object_signed_url(bucket="fried_chicken",
/// path="path/to/file",
/// content_md5="pRviqwS4c4OTJRTe03FD1w==",
/// content_type="text/plain",
/// duration="2d",
/// credentials=std.file(input="path/to/credentials.json").result,
/// extension_headers={
/// "x-goog-if-generation-match": "1",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var getUrl = Gcp.Storage.GetObjectSignedUrl.Invoke(new()
/// {
/// Bucket = "fried_chicken",
/// Path = "path/to/file",
/// ContentMd5 = "pRviqwS4c4OTJRTe03FD1w==",
/// ContentType = "text/plain",
/// Duration = "2d",
/// Credentials = Std.File.Invoke(new()
/// {
/// Input = "path/to/credentials.json",
/// }).Result,
/// ExtensionHeaders =
/// {
/// { "x-goog-if-generation-match", "1" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storage.GetObjectSignedUrl(ctx, &storage.GetObjectSignedUrlArgs{
/// Bucket:      "fried_chicken",
/// Path:        "path/to/file",
/// ContentMd5:  pulumi.StringRef("pRviqwS4c4OTJRTe03FD1w=="),
/// ContentType: pulumi.StringRef("text/plain"),
/// Duration:    pulumi.StringRef("2d"),
/// Credentials: pulumi.StringRef(std.File(ctx, &std.FileArgs{
/// Input: "path/to/credentials.json",
/// }, nil).Result),
/// ExtensionHeaders: map[string]interface{}{
/// "x-goog-if-generation-match": "1",
/// },
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetObjectSignedUrlArgs;
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
/// final var getUrl = StorageFunctions.getObjectSignedUrl(GetObjectSignedUrlArgs.builder()
/// .bucket("fried_chicken")
/// .path("path/to/file")
/// .contentMd5("pRviqwS4c4OTJRTe03FD1w==")
/// .contentType("text/plain")
/// .duration("2d")
/// .credentials(StdFunctions.file(FileArgs.builder()
/// .input("path/to/credentials.json")
/// .build()).result())
/// .extensionHeaders(Map.of("x-goog-if-generation-match", "1"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// getUrl:
/// fn::invoke:
/// function: gcp:storage:getObjectSignedUrl
/// arguments:
/// bucket: fried_chicken
/// path: path/to/file
/// contentMd5: pRviqwS4c4OTJRTe03FD1w==
/// contentType: text/plain
/// duration: 2d
/// credentials:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/credentials.json
/// return: result
/// extensionHeaders:
/// x-goog-if-generation-match: 1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetObjectSignedUrlResult> getObjectSignedUrl(
  GetObjectSignedUrlArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getObjectSignedUrl:getObjectSignedUrl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetObjectSignedUrlResult.fromMap(result);
}
