import 'package:pulumi/pulumi.dart';
import 'get_key_handles_args.dart';
import 'get_key_handles_result.dart';

/// Provides access to Google Cloud Platform KMS KeyHandle. A key handle is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_handles)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles/list).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyHandles = gcp.kms.getKeyHandles({
/// project: "resource-project-id",
/// location: "us-central1",
/// resourceTypeSelector: "storage.googleapis.com/Bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_handles = gcp.kms.get_key_handles(project="resource-project-id",
/// location="us-central1",
/// resource_type_selector="storage.googleapis.com/Bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myKeyHandles = Gcp.Kms.GetKeyHandles.Invoke(new()
/// {
/// Project = "resource-project-id",
/// Location = "us-central1",
/// ResourceTypeSelector = "storage.googleapis.com/Bucket",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kms.GetKeyHandles(ctx, &kms.GetKeyHandlesArgs{
/// Project:              pulumi.StringRef("resource-project-id"),
/// Location:             "us-central1",
/// ResourceTypeSelector: "storage.googleapis.com/Bucket",
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKeyHandlesArgs;
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
/// final var myKeyHandles = KmsFunctions.getKeyHandles(GetKeyHandlesArgs.builder()
/// .project("resource-project-id")
/// .location("us-central1")
/// .resourceTypeSelector("storage.googleapis.com/Bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myKeyHandles:
/// fn::invoke:
/// function: gcp:kms:getKeyHandles
/// arguments:
/// project: resource-project-id
/// location: us-central1
/// resourceTypeSelector: storage.googleapis.com/Bucket
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetKeyHandlesResult> getKeyHandles(
  GetKeyHandlesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyHandles:getKeyHandles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyHandlesResult.fromMap(result);
}
