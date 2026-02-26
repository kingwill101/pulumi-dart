import 'package:pulumi/pulumi.dart';
import 'secret_version_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret version including its secret value. To manage secret metadata, see the <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> resource.
///
/// > **NOTE:** If the `AWSCURRENT` staging label is present on this version during resource deletion, that label cannot be removed and will be skipped to prevent errors when fully deleting the secret. That label will leave this secret version active even after the resource is deleted from this provider unless the secret itself is deleted. Move the `AWSCURRENT` staging label before or after deleting this resource from this provider to fully trigger version deprecation if necessary.
///
///
/// ## Example Usage
///
/// ### Simple String Value
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.SecretVersion("example", {
/// secretId: exampleAwsSecretsmanagerSecret.id,
/// secretString: "example-string-to-protect",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.SecretVersion("example",
/// secret_id=example_aws_secretsmanager_secret["id"],
/// secret_string="example-string-to-protect")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecretsManager.SecretVersion("example", new()
/// {
/// SecretId = exampleAwsSecretsmanagerSecret.Id,
/// SecretString = "example-string-to-protect",
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
/// _, err := secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// SecretId:     pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// SecretString: pulumi.String("example-string-to-protect"),
/// })
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
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
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
/// var example = new SecretVersion("example", SecretVersionArgs.builder()
/// .secretId(exampleAwsSecretsmanagerSecret.id())
/// .secretString("example-string-to-protect")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:secretsmanager:SecretVersion
/// properties:
/// secretId: ${exampleAwsSecretsmanagerSecret.id}
/// secretString: example-string-to-protect
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Key-Value Pairs
///
/// Secrets Manager also accepts key-value pairs in JSON.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const example = config.getObject<Record<string, string>>("example") || {
/// key1: "value1",
/// key2: "value2",
/// };
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
/// secretId: exampleAwsSecretsmanagerSecret.id,
/// secretString: JSON.stringify(example),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// example = config.get_object("example")
/// if example is None:
/// example = {
/// "key1": "value1",
/// "key2": "value2",
/// }
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
/// secret_id=example_aws_secretsmanager_secret["id"],
/// secret_string=json.dumps(example))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var example = config.GetObject<Dictionary<string, string>>("example") ??
/// {
/// { "key1", "value1" },
/// { "key2", "value2" },
/// };
/// var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
/// {
/// SecretId = exampleAwsSecretsmanagerSecret.Id,
/// SecretString = JsonSerializer.Serialize(example),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// example := map[string]interface{}{
/// "key1": "value1",
/// "key2": "value2",
/// }
/// if param := cfg.GetObject("example"); param != nil {
/// example = param
/// }
/// tmpJSON0, err := json.Marshal(example)
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// SecretId:     pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// SecretString: pulumi.String(json0),
/// })
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
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var config = ctx.config();
/// final var example = config.get("example").orElse(Map.ofEntries(
/// Map.entry("key1", "value1"),
/// Map.entry("key2", "value2")
/// ));
/// var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
/// .secretId(exampleAwsSecretsmanagerSecret.id())
/// .secretString(serializeJson(
/// example))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// # The map here can come from other supported configurations
/// # like locals, resource attribute, map() built-in, etc.
/// example:
/// type: map(string)
/// default:
/// key1: value1
/// key2: value2
/// resources:
/// exampleSecretVersion:
/// type: aws:secretsmanager:SecretVersion
/// name: example
/// properties:
/// secretId: ${exampleAwsSecretsmanagerSecret.id}
/// secretString:
/// fn::toJSON: ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
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
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`secretId`" pulumi-lang-dotnet="`SecretId`" pulumi-lang-go="`secretId`" pulumi-lang-python="`secret_id`" pulumi-lang-yaml="`secretId`" pulumi-lang-java="`secretId`">`secret_id`</span> - (String) ID of the secret.
/// * <span pulumi-lang-nodejs="`versionId`" pulumi-lang-dotnet="`VersionId`" pulumi-lang-go="`versionId`" pulumi-lang-python="`version_id`" pulumi-lang-yaml="`versionId`" pulumi-lang-java="`versionId`">`version_id`</span> - (String) ID of the secret version.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span> using the secret ID and version ID. For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretVersion:SecretVersion example 'arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456|xxxxx-xxxxxxx-xxxxxxx-xxxxx'
/// ```
class SecretVersion extends CustomResource {
  /// The ARN of the secret.
  late final Output<String> arn;
  late final Output<bool> hasSecretStringWo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies binary data that you want to encrypt and store in this version of the secret. This is required if <span pulumi-lang-nodejs="`secretString`" pulumi-lang-dotnet="`SecretString`" pulumi-lang-go="`secretString`" pulumi-lang-python="`secret_string`" pulumi-lang-yaml="`secretString`" pulumi-lang-java="`secretString`">`secret_string`</span> or <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> is not set. Needs to be encoded to base64.
  late final Output<String?> secretBinary;

  /// Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist.
  late final Output<String> secretId;

  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if <span pulumi-lang-nodejs="`secretBinary`" pulumi-lang-dotnet="`SecretBinary`" pulumi-lang-go="`secretBinary`" pulumi-lang-python="`secret_binary`" pulumi-lang-yaml="`secretBinary`" pulumi-lang-java="`secretBinary`">`secret_binary`</span> or <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> is not set.
  late final Output<String?> secretString;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Specifies text data that you want to encrypt and store in this version of the secret. This is required if <span pulumi-lang-nodejs="`secretBinary`" pulumi-lang-dotnet="`SecretBinary`" pulumi-lang-go="`secretBinary`" pulumi-lang-python="`secret_binary`" pulumi-lang-yaml="`secretBinary`" pulumi-lang-java="`secretBinary`">`secret_binary`</span> or <span pulumi-lang-nodejs="`secretString`" pulumi-lang-dotnet="`SecretString`" pulumi-lang-go="`secretString`" pulumi-lang-python="`secret_string`" pulumi-lang-yaml="`secretString`" pulumi-lang-java="`secretString`">`secret_string`</span> is not set.
  late final Output<String?> secretStringWo;

  /// Used together with <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> to trigger an update. Increment this value when an update to <span pulumi-lang-nodejs="`secretStringWo`" pulumi-lang-dotnet="`SecretStringWo`" pulumi-lang-go="`secretStringWo`" pulumi-lang-python="`secret_string_wo`" pulumi-lang-yaml="`secretStringWo`" pulumi-lang-java="`secretStringWo`">`secret_string_wo`</span> is required.
  late final Output<int?> secretStringWoVersion;

  /// The unique identifier of the version of the secret.
  late final Output<String> versionId;

  /// Specifies a list of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  ///
  /// > **NOTE:** If <span pulumi-lang-nodejs="`versionStages`" pulumi-lang-dotnet="`VersionStages`" pulumi-lang-go="`versionStages`" pulumi-lang-python="`version_stages`" pulumi-lang-yaml="`versionStages`" pulumi-lang-java="`versionStages`">`version_stages`</span> is configured, you must include the `AWSCURRENT` staging label if this secret version is the only version or if the label is currently present on this secret version, otherwise this provider will show a perpetual difference.
  late final Output<List<String>> versionStages;

  SecretVersion(
    String name, {
    SecretVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretVersion:SecretVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hasSecretStringWo = registerOutput<bool>('hasSecretStringWo');
    this.region = registerOutput<String>('region');
    this.secretBinary = registerOutput<String?>('secretBinary');
    this.secretId = registerOutput<String>('secretId');
    this.secretString = registerOutput<String?>('secretString');
    this.secretStringWo = registerOutput<String?>('secretStringWo');
    this.secretStringWoVersion = registerOutput<int?>('secretStringWoVersion');
    this.versionId = registerOutput<String>('versionId');
    this.versionStages = registerOutput<List<String>>('versionStages');
  }
}
