import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_args.dart';
import 'secret_version_state.dart';

/// Provides a resource to manage AWS Secrets Manager secret version including its secret value. To manage secret metadata, see the `aws.secretsmanager.Secret` resource.
///
/// &gt; **NOTE:** If the `AWSCURRENT` staging label is present on this version during resource deletion, that label cannot be removed and will be skipped to prevent errors when fully deleting the secret. That label will leave this secret version active even after the resource is deleted from this provider unless the secret itself is deleted. Move the `AWSCURRENT` staging label before or after deleting this resource from this provider to fully trigger version deprecation if necessary.
///
///
/// ## Example Usage
///
/// ### Simple String Value
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.SecretVersion("example", {
///     secretId: exampleAwsSecretsmanagerSecret.id,
///     secretString: "example-string-to-protect",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.SecretVersion("example",
///     secret_id=example_aws_secretsmanager_secret["id"],
///     secret_string="example-string-to-protect")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = exampleAwsSecretsmanagerSecret.Id,
///         SecretString = "example-string-to-protect",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// 			SecretString: pulumi.String("example-string-to-protect"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_secretsmanager_secretversion" "example" {
///   secret_id     = exampleAwsSecretsmanagerSecret.id
///   secret_string = "example-string-to-protect"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new SecretVersion("example", SecretVersionArgs.builder()
///             .secretId(exampleAwsSecretsmanagerSecret.id())
///             .secretString("example-string-to-protect")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:SecretVersion
///     properties:
///       secretId: ${exampleAwsSecretsmanagerSecret.id}
///       secretString: example-string-to-protect
/// ```
///
///
/// ### Key-Value Pairs
///
/// Secrets Manager also accepts key-value pairs in JSON.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const example = config.getObject<Record<string, string>>("example") || {
///     key1: "value1",
///     key2: "value2",
/// };
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
///     secretId: exampleAwsSecretsmanagerSecret.id,
///     secretString: JSON.stringify(example),
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
///     example = {
///         "key1": "value1",
///         "key2": "value2",
///     }
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
///     secret_id=example_aws_secretsmanager_secret["id"],
///     secret_string=json.dumps(example))
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
///     var config = new Config();
///     var example = config.GetObject<Dictionary<string, string>>("example") ??
///     {
///         { "key1", "value1" },
///         { "key2", "value2" },
///     };
///     var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
///     {
///         SecretId = exampleAwsSecretsmanagerSecret.Id,
///         SecretString = JsonSerializer.Serialize(example),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		example := map[string]string{
/// 			"key1": "value1",
/// 			"key2": "value2",
/// 		}
/// 		if param := cfg.GetObject("example"); param != nil {
/// 			example = param
/// 		}
/// 		tmpJSON0, err := json.Marshal(example)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// 			SecretId:     pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// 			SecretString: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_secretsmanager_secretversion" "example" {
///   secret_id     = exampleAwsSecretsmanagerSecret.id
///   secret_string = jsonencode(var.example)
/// }
/// # The map here can come from other supported configurations
/// # like locals, resource attribute, map() built-in, etc.
/// variable "example" {
///   type = map(optional(string))
///   default = {
///     "key1" = "value1"
///     "key2" = "value2"
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var example = config.get("example").orElse(Map.ofEntries(
///             Map.entry("key1", "value1"),
///             Map.entry("key2", "value2")
///         ));
///         var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
///             .secretId(exampleAwsSecretsmanagerSecret.id())
///             .secretString(serializeJson(
///                 example))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # The map here can come from other supported configurations
///   # like locals, resource attribute, map() built-in, etc.
///   example:
///     type: object
///     default:
///       key1: value1
///       key2: value2
/// resources:
///   exampleSecretVersion:
///     type: aws:secretsmanager:SecretVersion
///     name: example
///     properties:
///       secretId: ${exampleAwsSecretsmanagerSecret.id}
///       secretString:
///         fn::toJSON: ${example}
/// ```
///
///
///
/// Reading key-value pairs from JSON back into a native map
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as std from "@pulumi/std";
///
/// export const example = std.jsondecode({
///     input: exampleAwsSecretsmanagerSecretVersion.secretString,
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
///     return new Dictionary<string, object?>
///     {
///         ["example"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = exampleAwsSecretsmanagerSecretVersion.SecretString,
///         }).Apply(invoke => invoke.Result?.Key1),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ctx.Export("example", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: exampleAwsSecretsmanagerSecretVersion.SecretString,
/// 		}, nil).Result.Key1))
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// output "example" {
///   value = jsondecode(exampleAwsSecretsmanagerSecretVersion.secretString)["key1"]
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         ctx.export("example", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(exampleAwsSecretsmanagerSecretVersion.secretString())
///             .build()).result().key1());
///     }
/// }
/// ```
/// ```yaml
/// outputs:
///   example:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${exampleAwsSecretsmanagerSecretVersion.secretString}
///       return: result.key1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `secretId` - (String) ID of the secret.
/// * `versionId` - (String) ID of the secret version.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.secretsmanager.SecretVersion` using the secret ID and version ID. For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secretVersion:SecretVersion example 'arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456|xxxxx-xxxxxxx-xxxxxxx-xxxxx'
/// ```
class SecretVersion extends pulumi.CustomResource {
  /// (**Deprecated**) ARN of the secret. Use `secretArn` instead.
  late final pulumi.Output<String> arn;
  /// Whether a write-only secret string value is set.
  late final pulumi.Output<bool> hasSecretStringWo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the secret.
  late final pulumi.Output<String> secretArn;
  /// Binary data that you want to encrypt and store in this version of the secret. This is required if `secretString` or `secretStringWo` is not set. Needs to be encoded to base64.
  late final pulumi.Output<String?> secretBinary;
  /// Secret to which you want to add a new version. You can specify either the ARN or the friendly name of the secret. The secret must already exist.
  late final pulumi.Output<String> secretId;
  /// Text data that you want to encrypt and store in this version of the secret. This is required if `secretBinary` or `secretStringWo` is not set.
  late final pulumi.Output<String?> secretString;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Text data that you want to encrypt and store in this version of the secret. This is required if `secretBinary` or `secretString` is not set.
  late final pulumi.Output<String?> secretStringWo;
  /// Version identifier that works together with `secretStringWo` to trigger an update. Increment this value when an update to `secretStringWo` is required.
  late final pulumi.Output<int?> secretStringWoVersion;
  /// Unique identifier of the version of the secret.
  late final pulumi.Output<String> versionId;
  /// List of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation.
  ///
  /// &gt; **NOTE:** If `versionStages` is configured, you must include the `AWSCURRENT` staging label if this secret version is the only version or if the label is currently present on this secret version, otherwise this provider will show a perpetual difference.
  late final pulumi.Output<List<String>> versionStages;

  /// Creates a new [SecretVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretVersion]. {@macro pulumi_secretsmanager_secret_version_secret_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretVersion(
    String name, {
    SecretVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretVersion:SecretVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['secretBinary', 'secretString', 'secretStringWo'],
        ) {
    arn = registerOutput<String>('arn');
    hasSecretStringWo = registerOutput<bool>('hasSecretStringWo');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
    secretBinary = registerOutput<String?>('secretBinary', isSecret: true);
    secretId = registerOutput<String>('secretId');
    secretString = registerOutput<String?>('secretString', isSecret: true);
    secretStringWo = registerOutput<String?>('secretStringWo', isSecret: true);
    secretStringWoVersion = registerOutput<int?>('secretStringWoVersion');
    versionId = registerOutput<String>('versionId');
    versionStages = registerOutput<List<String>>('versionStages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [SecretVersion] resource's state with the given [name] and [id].
  static SecretVersion get(
    String name,
    pulumi.Input<String> id, {
    SecretVersionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecretVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecretVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secretVersion:SecretVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    hasSecretStringWo = registerOutput<bool>('hasSecretStringWo');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
    secretBinary = registerOutput<String?>('secretBinary', isSecret: true);
    secretId = registerOutput<String>('secretId');
    secretString = registerOutput<String?>('secretString', isSecret: true);
    secretStringWo = registerOutput<String?>('secretStringWo', isSecret: true);
    secretStringWoVersion = registerOutput<int?>('secretStringWoVersion');
    versionId = registerOutput<String>('versionId');
    versionStages = registerOutput<List<String>>('versionStages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [SecretVersion] resource.
  SecretVersion.reference(String urn)
    : super(
        'aws:secretsmanager/secretVersion:SecretVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secretBinary', 'secretString', 'secretStringWo'],
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    hasSecretStringWo = registerOutput<bool>('hasSecretStringWo');
    region = registerOutput<String>('region');
    secretArn = registerOutput<String>('secretArn');
    secretBinary = registerOutput<String?>('secretBinary', isSecret: true);
    secretId = registerOutput<String>('secretId');
    secretString = registerOutput<String?>('secretString', isSecret: true);
    secretStringWo = registerOutput<String?>('secretStringWo', isSecret: true);
    secretStringWoVersion = registerOutput<int?>('secretStringWoVersion');
    versionId = registerOutput<String>('versionId');
    versionStages = registerOutput<List<String>>('versionStages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
