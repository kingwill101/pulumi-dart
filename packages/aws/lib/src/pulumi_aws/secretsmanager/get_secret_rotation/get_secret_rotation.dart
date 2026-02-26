import 'package:pulumi/pulumi.dart';
import 'get_secret_rotation_args.dart';
import 'get_secret_rotation_result.dart';

/// Retrieve information about a Secrets Manager secret rotation. To retrieve secret metadata, see the <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> data source. To retrieve a secret value, see the <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span> data source.
///
/// ## Example Usage
///
/// ### Retrieve Secret Rotation Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.secretsmanager.getSecretRotation({
/// secretId: exampleAwsSecretsmanagerSecret.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.get_secret_rotation(secret_id=example_aws_secretsmanager_secret["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SecretsManager.GetSecretRotation.Invoke(new()
/// {
/// SecretId = exampleAwsSecretsmanagerSecret.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := secretsmanager.LookupSecretRotation(ctx, &secretsmanager.LookupSecretRotationArgs{
/// SecretId: exampleAwsSecretsmanagerSecret.Id,
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
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretRotationArgs;
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
/// final var example = SecretsmanagerFunctions.getSecretRotation(GetSecretRotationArgs.builder()
/// .secretId(exampleAwsSecretsmanagerSecret.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:secretsmanager:getSecretRotation
/// arguments:
/// secretId: ${exampleAwsSecretsmanagerSecret.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecretRotationResult> getSecretRotation(
  GetSecretRotationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretRotation:getSecretRotation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretRotationResult.fromMap(result);
}
