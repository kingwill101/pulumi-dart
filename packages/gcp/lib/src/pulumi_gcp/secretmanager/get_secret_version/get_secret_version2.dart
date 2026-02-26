import 'package:pulumi/pulumi.dart';
import 'get_secret_version_args2.dart';
import 'get_secret_version_result2.dart';

/// Get the value and metadata from a Secret Manager secret version. For more information see the [official documentation](https://cloud.google.com/secret-manager/docs/) and [API](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions). If you don't need the metadata (i.e., if you want to use a more limited role to access the secret version only), see also the<span pulumi-lang-nodejs=" gcp.secretmanager.getSecretVersionAccess " pulumi-lang-dotnet=" gcp.secretmanager.getSecretVersionAccess " pulumi-lang-go=" secretmanager.getSecretVersionAccess " pulumi-lang-python=" secretmanager_get_secret_version_access " pulumi-lang-yaml=" gcp.secretmanager.getSecretVersionAccess " pulumi-lang-java=" gcp.secretmanager.getSecretVersionAccess "> gcp.secretmanager.getSecretVersionAccess </span>datasource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.secretmanager.getSecretVersion({
/// secret: "my-secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.secretmanager.get_secret_version(secret="my-secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = Gcp.SecretManager.GetSecretVersion.Invoke(new()
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
/// _, err := secretmanager.LookupSecretVersion(ctx, &secretmanager.LookupSecretVersionArgs{
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
/// import com.pulumi.gcp.secretmanager.inputs.GetSecretVersionArgs;
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
/// final var basic = SecretmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
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
/// function: gcp:secretmanager:getSecretVersion
/// arguments:
/// secret: my-secret
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecretVersionResult2> getSecretVersion2(
  GetSecretVersionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult2.fromMap(result);
}
