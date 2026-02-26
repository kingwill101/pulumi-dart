import 'package:pulumi/pulumi.dart';
import 'get_secret_version_args.dart';
import 'get_secret_version_result.dart';

/// Retrieve information about a Secrets Manager secret version, including its secret value. To retrieve secret metadata, see the <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> data source.
///
/// ## Example Usage
///
/// ### Retrieve Current Secret Version
///
/// By default, this data sources retrieves information based on the `AWSCURRENT` staging label.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const secret_version = aws.secretsmanager.getSecretVersion({
/// secretId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// secret_version = aws.secretsmanager.get_secret_version(secret_id=example["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var secret_version = Aws.SecretsManager.GetSecretVersion.Invoke(new()
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
/// _, err := secretsmanager.LookupSecretVersion(ctx, &secretsmanager.LookupSecretVersionArgs{
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
/// final var secret-version = SecretsmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
/// .secretId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// secret-version:
/// fn::invoke:
/// function: aws:secretsmanager:getSecretVersion
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
/// Reading key-value pairs from JSON back into a native map
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
Future<GetSecretVersionResult> getSecretVersion(
  GetSecretVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult.fromMap(result);
}
