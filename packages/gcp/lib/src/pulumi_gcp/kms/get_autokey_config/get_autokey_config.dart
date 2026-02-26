import 'package:pulumi/pulumi.dart';
import 'get_autokey_config_args.dart';
import 'get_autokey_config_result.dart';

/// Provides access to Google Cloud Platform KMS AutokeyConfig. A AutokeyConfig is a Cloud KMS resource that helps you safely span the separation of duties to create new Cloud KMS keys for CMEK using Autokey.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/kms/docs/reference/rest/v1/folders)
/// and
/// [API](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyHandles).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myAutokeyConfig = gcp.kms.getAutokeyConfig({
/// folder: "folders/123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_autokey_config = gcp.kms.get_autokey_config(folder="folders/123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myAutokeyConfig = Gcp.Kms.GetAutokeyConfig.Invoke(new()
/// {
/// Folder = "folders/123",
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
/// _, err := kms.LookupAutokeyConfig(ctx, &kms.LookupAutokeyConfigArgs{
/// Folder: "folders/123",
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
/// import com.pulumi.gcp.kms.inputs.GetAutokeyConfigArgs;
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
/// final var myAutokeyConfig = KmsFunctions.getAutokeyConfig(GetAutokeyConfigArgs.builder()
/// .folder("folders/123")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myAutokeyConfig:
/// fn::invoke:
/// function: gcp:kms:getAutokeyConfig
/// arguments:
/// folder: folders/123
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAutokeyConfigResult> getAutokeyConfig(
  GetAutokeyConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:kms/getAutokeyConfig:getAutokeyConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutokeyConfigResult.fromMap(result);
}
