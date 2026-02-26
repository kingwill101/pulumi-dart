import 'package:pulumi/pulumi.dart';
import 'get_key_handle_args.dart';
import 'get_key_handle_result.dart';

/// Provides access to Google Cloud Platform KMS KeyHandle. A key handle is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/resource-hierarchy#key_handles)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myKeyHandle = gcp.kms.getKeyHandle({
/// name: "eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_key_handle = gcp.kms.get_key_handle(name="eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
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
/// var myKeyHandle = Gcp.Kms.GetKeyHandle.Invoke(new()
/// {
/// Name = "eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
/// Location = "us-central1",
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
/// _, err := kms.LookupKeyHandle(ctx, &kms.LookupKeyHandleArgs{
/// Name:     "eed58b7b-20ad-4da8-ad85-ba78a0d5ab87",
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
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKeyHandleArgs;
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
/// final var myKeyHandle = KmsFunctions.getKeyHandle(GetKeyHandleArgs.builder()
/// .name("eed58b7b-20ad-4da8-ad85-ba78a0d5ab87")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myKeyHandle:
/// fn::invoke:
/// function: gcp:kms:getKeyHandle
/// arguments:
/// name: eed58b7b-20ad-4da8-ad85-ba78a0d5ab87
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetKeyHandleResult> getKeyHandle(
  GetKeyHandleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getKeyHandle:getKeyHandle',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyHandleResult.fromMap(result);
}
