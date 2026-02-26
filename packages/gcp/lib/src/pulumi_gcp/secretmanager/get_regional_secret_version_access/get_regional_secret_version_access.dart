import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_version_access_args.dart';
import 'get_regional_secret_version_access_result.dart';

/// subcategory: "Secret Manager"
/// page_title: "Google:<span pulumi-lang-nodejs=" gcp.secretmanager.getRegionalSecretVersionAccess"" pulumi-lang-dotnet=" gcp.secretmanager.getRegionalSecretVersionAccess"" pulumi-lang-go=" secretmanager.getRegionalSecretVersionAccess"" pulumi-lang-python=" secretmanager_get_regional_secret_version_access"" pulumi-lang-yaml=" gcp.secretmanager.getRegionalSecretVersionAccess"" pulumi-lang-java=" gcp.secretmanager.getRegionalSecretVersionAccess""> gcp.secretmanager.getRegionalSecretVersionAccess"</span>
/// description: |-
/// Get a payload of Secret Manager regional secret's version.
/// ---
///
/// Get the value from a Secret Manager regional secret version. This is similar to the<span pulumi-lang-nodejs=" gcp.secretmanager.RegionalSecretVersion " pulumi-lang-dotnet=" gcp.secretmanager.RegionalSecretVersion " pulumi-lang-go=" secretmanager.RegionalSecretVersion " pulumi-lang-python=" secretmanager.RegionalSecretVersion " pulumi-lang-yaml=" gcp.secretmanager.RegionalSecretVersion " pulumi-lang-java=" gcp.secretmanager.RegionalSecretVersion "> gcp.secretmanager.RegionalSecretVersion </span>datasource, but it only requires the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/regional-secrets-overview) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.locations.secrets.versions/access).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const latest = gcp.secretmanager.getRegionalSecretVersionAccess({
/// secret: "my-secret",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// latest = gcp.secretmanager.get_regional_secret_version_access(secret="my-secret",
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
/// var latest = Gcp.SecretManager.GetRegionalSecretVersionAccess.Invoke(new()
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
/// _, err := secretmanager.GetRegionalSecretVersionAccess(ctx, &secretmanager.GetRegionalSecretVersionAccessArgs{
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
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretVersionAccessArgs;
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
/// final var latest = SecretmanagerFunctions.getRegionalSecretVersionAccess(GetRegionalSecretVersionAccessArgs.builder()
/// .secret("my-secret")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// latest:
/// fn::invoke:
/// function: gcp:secretmanager:getRegionalSecretVersionAccess
/// arguments:
/// secret: my-secret
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalSecretVersionAccessResult> getRegionalSecretVersionAccess(
  GetRegionalSecretVersionAccessArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecretVersionAccess:getRegionalSecretVersionAccess',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretVersionAccessResult.fromMap(result);
}
