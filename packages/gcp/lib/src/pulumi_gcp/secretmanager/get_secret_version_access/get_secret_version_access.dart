import 'package:pulumi/pulumi.dart';
import 'get_secret_version_access_args.dart';
import 'get_secret_version_access_result.dart';

/// Get the value from a Secret Manager secret version. This is similar to the<span pulumi-lang-nodejs=" gcp.secretmanager.SecretVersion " pulumi-lang-dotnet=" gcp.secretmanager.SecretVersion " pulumi-lang-go=" secretmanager.SecretVersion " pulumi-lang-python=" secretmanager.SecretVersion " pulumi-lang-yaml=" gcp.secretmanager.SecretVersion " pulumi-lang-java=" gcp.secretmanager.SecretVersion "> gcp.secretmanager.SecretVersion </span>datasource, but it only requires the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions/access).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getSecretVersionAccess({
/// secret: "my-secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_secret_version_access(secret="my-secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = Gcp.SecretManager.GetSecretVersionAccess.Invoke(new()
/// {
/// Secret = "my-secret",
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
/// _, err := secretmanager.GetSecretVersionAccess(ctx, &secretmanager.GetSecretVersionAccessArgs{
/// Secret: "my-secret",
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
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretVersionAccessArgs;
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
/// final var basic = SecretmanagerFunctions.getSecretVersionAccess(GetSecretVersionAccessArgs.builder()
/// .secret("my-secret")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// basic:
/// fn::invoke:
/// function: gcp:secretmanager:getSecretVersionAccess
/// arguments:
/// secret: my-secret
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecretVersionAccessResult> getSecretVersionAccess(
  GetSecretVersionAccessArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretVersionAccess:getSecretVersionAccess',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionAccessResult.fromMap(result);
}
