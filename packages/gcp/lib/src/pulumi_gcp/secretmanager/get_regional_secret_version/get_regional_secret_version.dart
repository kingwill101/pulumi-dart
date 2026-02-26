import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_version_args.dart';
import 'get_regional_secret_version_result.dart';

/// subcategory: "Secret Manager"
/// description: |-
/// Get a Secret Manager regional secret's version.
/// ---
///
/// Get the value and metadata from a Secret Manager regional secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/regional-secrets-overview) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the regional secret version only), see also the<span pulumi-lang-nodejs=" gcp.secretmanager.getRegionalSecretVersionAccess " pulumi-lang-dotnet=" gcp.secretmanager.getRegionalSecretVersionAccess " pulumi-lang-go=" secretmanager.getRegionalSecretVersionAccess " pulumi-lang-python=" secretmanager_get_regional_secret_version_access " pulumi-lang-yaml=" gcp.secretmanager.getRegionalSecretVersionAccess " pulumi-lang-java=" gcp.secretmanager.getRegionalSecretVersionAccess "> gcp.secretmanager.getRegionalSecretVersionAccess </span>datasource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getRegionalSecretVersion({
/// secret: "my-secret",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_regional_secret_version(secret="my-secret",
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
/// var basic = Gcp.SecretManager.GetRegionalSecretVersion.Invoke(new()
/// {
/// Secret = "my-secret",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretmanager.LookupRegionalSecretVersion(ctx, &secretmanager.LookupRegionalSecretVersionArgs{
/// Secret:   "my-secret",
/// Location: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretVersionArgs;
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
/// final var basic = SecretmanagerFunctions.getRegionalSecretVersion(GetRegionalSecretVersionArgs.builder()
/// .secret("my-secret")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// basic:
/// fn::invoke:
/// function: gcp:secretmanager:getRegionalSecretVersion
/// arguments:
/// secret: my-secret
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalSecretVersionResult> getRegionalSecretVersion(
  GetRegionalSecretVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretVersion:getRegionalSecretVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretVersionResult.fromMap(result);
}
