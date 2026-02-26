import 'package:pulumi/pulumi.dart';
import 'get_secret_versions_args.dart';
import 'get_secret_versions_result.dart';

/// Retrieve the versions of a Secrets Manager secret. To retrieve secret metadata, see the data sources <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> and <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span>.
///
/// ## Example Usage
///
/// ### Retrieve All Versions of a Secret
///
/// By default, this data sources retrieves all versions of a secret.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const secret_versions = aws.secretsmanager.getSecretVersions({
/// secretId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// secret_versions = aws.secretsmanager.get_secret_versions(secret_id=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var secret_versions = Aws.SecretsManager.GetSecretVersions.Invoke(new()
/// {
/// SecretId = example.Id,
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
/// _, err := secretsmanager.GetSecretVersions(ctx, &secretsmanager.GetSecretVersionsArgs{
/// SecretId: example.Id,
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
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretVersionsArgs;
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
/// final var secret-versions = SecretsmanagerFunctions.getSecretVersions(GetSecretVersionsArgs.builder()
/// .secretId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// secret-versions:
/// fn::invoke:
/// function: aws:secretsmanager:getSecretVersions
/// arguments:
/// secretId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Retrieve Specific Secret Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_version_stage = aws.secretsmanager.getSecretVersion({
/// secretId: example.id,
/// versionStage: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_version_stage = aws.secretsmanager.get_secret_version(secret_id=example["id"],
/// version_stage="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var by_version_stage = Aws.SecretsManager.GetSecretVersion.Invoke(new()
/// {
/// SecretId = example.Id,
/// VersionStage = "example",
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
/// _, err := secretsmanager.LookupSecretVersion(ctx, &secretsmanager.LookupSecretVersionArgs{
/// SecretId:     example.Id,
/// VersionStage: pulumi.StringRef("example"),
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
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretVersionArgs;
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
/// final var by-version-stage = SecretsmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
/// .secretId(example.id())
/// .versionStage("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// by-version-stage:
/// fn::invoke:
/// function: aws:secretsmanager:getSecretVersion
/// arguments:
/// secretId: ${example.id}
/// versionStage: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Handling Key-Value Secret Strings in JSON
///
/// Reading key-value pairs from JSON back into a native Terraform map can be accomplished in Terraform 0.12 and later with the `jsondecode()` function:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
///
/// export const example = std.jsondecode({
/// input: exampleAwsSecretsmanagerSecretVersion.secretString,
/// }).then(invoke => invoke.result?.key1);
/// ```
/// ```python
/// import pulumi
/// import pulumi_std as std
///
/// pulumi.export("example", std.jsondecode(input=example_aws_secretsmanager_secret_version["secretString"]).result["key1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// return new Dictionary<string, object?>
/// {
/// ["example"] = Std.Jsondecode.Invoke(new()
/// {
/// Input = exampleAwsSecretsmanagerSecretVersion.SecretString,
/// }).Apply(invoke => invoke.Result?.Key1),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// ctx.Export("example", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// Input: exampleAwsSecretsmanagerSecretVersion.SecretString,
/// }, nil).Result.Key1))
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
/// ctx.export("example", StdFunctions.jsondecode(JsondecodeArgs.builder()
/// .input(exampleAwsSecretsmanagerSecretVersion.secretString())
/// .build()).result().key1());
/// }
/// }
/// ```
/// ```yaml
/// outputs:
/// example:
/// fn::invoke:
/// function: std:jsondecode
/// arguments:
/// input: ${exampleAwsSecretsmanagerSecretVersion.secretString}
/// return: result.key1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecretVersionsResult> getSecretVersions(
  GetSecretVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretVersions:getSecretVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionsResult.fromMap(result);
}
