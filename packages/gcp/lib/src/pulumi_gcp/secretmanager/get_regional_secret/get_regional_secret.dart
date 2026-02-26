import 'package:pulumi/pulumi.dart';
import 'get_regional_secret_args.dart';
import 'get_regional_secret_result.dart';

/// Use this data source to get information about a Secret Manager Regional Secret
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secretDatasource = gcp.secretmanager.getRegionalSecret({
/// secretId: "secretname",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_datasource = gcp.secretmanager.get_regional_secret(secret_id="secretname",
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
/// var secretDatasource = Gcp.SecretManager.GetRegionalSecret.Invoke(new()
/// {
/// SecretId = "secretname",
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
/// _, err := secretmanager.LookupRegionalSecret(ctx, &secretmanager.LookupRegionalSecretArgs{
/// SecretId: "secretname",
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
/// import com.pulumi.gcp.secretmanager.SecretmanagerFunctions;
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretArgs;
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
/// final var secretDatasource = SecretmanagerFunctions.getRegionalSecret(GetRegionalSecretArgs.builder()
/// .secretId("secretname")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// secretDatasource:
/// fn::invoke:
/// function: gcp:secretmanager:getRegionalSecret
/// arguments:
/// secretId: secretname
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalSecretResult> getRegionalSecret(
  GetRegionalSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecret:getRegionalSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretResult.fromMap(result);
}
