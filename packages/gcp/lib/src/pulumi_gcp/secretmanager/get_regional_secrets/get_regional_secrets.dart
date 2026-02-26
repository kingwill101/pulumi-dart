import 'package:pulumi/pulumi.dart';
import 'get_regional_secrets_args.dart';
import 'get_regional_secrets_result.dart';

/// subcategory: "Secret Manager"
/// description: |-
/// List the Secret Manager Regional Secrets.
/// ---
///
/// Use this data source to list the Secret Manager Regional Secrets.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secrets = gcp.secretmanager.getRegionalSecrets({
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secrets = gcp.secretmanager.get_regional_secrets(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var secrets = Gcp.SecretManager.GetRegionalSecrets.Invoke(new()
/// {
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
/// _, err := secretmanager.GetRegionalSecrets(ctx, &secretmanager.GetRegionalSecretsArgs{
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
/// import com.pulumi.gcp.secretmanager.inputs.GetRegionalSecretsArgs;
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
/// final var secrets = SecretmanagerFunctions.getRegionalSecrets(GetRegionalSecretsArgs.builder()
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// secrets:
/// fn::invoke:
/// function: gcp:secretmanager:getRegionalSecrets
/// arguments:
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalSecretsResult> getRegionalSecrets(
  GetRegionalSecretsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecrets:getRegionalSecrets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretsResult.fromMap(result);
}
