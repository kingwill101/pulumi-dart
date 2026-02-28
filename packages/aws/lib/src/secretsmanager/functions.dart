import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_random_password_args.dart';
import 'get_random_password_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_secret_rotation_args.dart';
import 'get_secret_rotation_result.dart';
import 'get_secret_version_args.dart';
import 'get_secret_version_result.dart';
import 'get_secret_versions_args.dart';
import 'get_secret_versions_result.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';

/// Generate a random password.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.secretsmanager.getRandomPassword({
///     passwordLength: 50,
///     excludeNumbers: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.secretsmanager.get_random_password(password_length=50,
///     exclude_numbers=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.SecretsManager.GetRandomPassword.Invoke(new()
///     {
///         PasswordLength = 50,
///         ExcludeNumbers = true,
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
/// 		_, err := secretsmanager.GetRandomPassword(ctx, &secretsmanager.GetRandomPasswordArgs{
/// 			PasswordLength: pulumi.IntRef(50),
/// 			ExcludeNumbers: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetRandomPasswordArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var test = SecretsmanagerFunctions.getRandomPassword(GetRandomPasswordArgs.builder()
///             .passwordLength(50)
///             .excludeNumbers(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:secretsmanager:getRandomPassword
///       arguments:
///         passwordLength: 50
///         excludeNumbers: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsmanager_get_random_password_get_random_password_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRandomPasswordResult> getRandomPassword(
  GetRandomPasswordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getRandomPassword:getRandomPassword',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRandomPasswordResult.fromMap(result);
}

/// Retrieve metadata information about a Secrets Manager secret. To retrieve a secret value, see the `aws.secretsmanager.SecretVersion` data source.
///
/// ## Example Usage
///
/// ### ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_arn = aws.secretsmanager.getSecret({
///     arn: "arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_arn = aws.secretsmanager.get_secret(arn="arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var by_arn = Aws.SecretsManager.GetSecret.Invoke(new()
///     {
///         Arn = "arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456",
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
/// 		_, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// 			Arn: pulumi.StringRef("arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var by-arn = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
///             .arn("arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   by-arn:
///     fn::invoke:
///       function: aws:secretsmanager:getSecret
///       arguments:
///         arn: arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
///
///
/// ### Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_name = aws.secretsmanager.getSecret({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_name = aws.secretsmanager.get_secret(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var by_name = Aws.SecretsManager.GetSecret.Invoke(new()
///     {
///         Name = "example",
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
/// 		_, err := secretsmanager.LookupSecret(ctx, &secretsmanager.LookupSecretArgs{
/// 			Name: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var by-name = SecretsmanagerFunctions.getSecret(GetSecretArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   by-name:
///     fn::invoke:
///       function: aws:secretsmanager:getSecret
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsmanager_get_secret_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Retrieve information about a Secrets Manager secret rotation. To retrieve secret metadata, see the `aws.secretsmanager.Secret` data source. To retrieve a secret value, see the `aws.secretsmanager.SecretVersion` data source.
///
/// ## Example Usage
///
/// ### Retrieve Secret Rotation Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.secretsmanager.getSecretRotation({
///     secretId: exampleAwsSecretsmanagerSecret.id,
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
///     var example = Aws.SecretsManager.GetSecretRotation.Invoke(new()
///     {
///         SecretId = exampleAwsSecretsmanagerSecret.Id,
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
/// 		_, err := secretsmanager.LookupSecretRotation(ctx, &secretsmanager.LookupSecretRotationArgs{
/// 			SecretId: exampleAwsSecretsmanagerSecret.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var example = SecretsmanagerFunctions.getSecretRotation(GetSecretRotationArgs.builder()
///             .secretId(exampleAwsSecretsmanagerSecret.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:secretsmanager:getSecretRotation
///       arguments:
///         secretId: ${exampleAwsSecretsmanagerSecret.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsmanager_get_secret_rotation_get_secret_rotation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretRotationResult> getSecretRotation(
  GetSecretRotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretRotation:getSecretRotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretRotationResult.fromMap(result);
}

/// Retrieve information about a Secrets Manager secret version, including its secret value. To retrieve secret metadata, see the `aws.secretsmanager.Secret` data source.
///
/// ## Example Usage
///
/// ### Retrieve Current Secret Version
///
/// By default, this data sources retrieves information based on the `AWSCURRENT` staging label.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const secret_version = aws.secretsmanager.getSecretVersion({
///     secretId: example.id,
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
///     var secret_version = Aws.SecretsManager.GetSecretVersion.Invoke(new()
///     {
///         SecretId = example.Id,
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
/// 		_, err := secretsmanager.LookupSecretVersion(ctx, &secretsmanager.LookupSecretVersionArgs{
/// 			SecretId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var secret-version = SecretsmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
///             .secretId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secret-version:
///     fn::invoke:
///       function: aws:secretsmanager:getSecretVersion
///       arguments:
///         secretId: ${example.id}
/// ```
///
///
/// ### Retrieve Specific Secret Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_version_stage = aws.secretsmanager.getSecretVersion({
///     secretId: example.id,
///     versionStage: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_version_stage = aws.secretsmanager.get_secret_version(secret_id=example["id"],
///     version_stage="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var by_version_stage = Aws.SecretsManager.GetSecretVersion.Invoke(new()
///     {
///         SecretId = example.Id,
///         VersionStage = "example",
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
/// 		_, err := secretsmanager.LookupSecretVersion(ctx, &secretsmanager.LookupSecretVersionArgs{
/// 			SecretId:     example.Id,
/// 			VersionStage: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var by-version-stage = SecretsmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
///             .secretId(example.id())
///             .versionStage("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   by-version-stage:
///     fn::invoke:
///       function: aws:secretsmanager:getSecretVersion
///       arguments:
///         secretId: ${example.id}
///         versionStage: example
/// ```
///
///
/// ### Handling Key-Value Secret Strings in JSON
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
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsmanager_get_secret_version_get_secret_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretVersionResult> getSecretVersion(
  GetSecretVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretVersion:getSecretVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionResult.fromMap(result);
}

/// Retrieve the versions of a Secrets Manager secret. To retrieve secret metadata, see the data sources `aws.secretsmanager.Secret` and `aws.secretsmanager.SecretVersion`.
///
/// ## Example Usage
///
/// ### Retrieve All Versions of a Secret
///
/// By default, this data sources retrieves all versions of a secret.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const secret_versions = aws.secretsmanager.getSecretVersions({
///     secretId: example.id,
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
///     var secret_versions = Aws.SecretsManager.GetSecretVersions.Invoke(new()
///     {
///         SecretId = example.Id,
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
/// 		_, err := secretsmanager.GetSecretVersions(ctx, &secretsmanager.GetSecretVersionsArgs{
/// 			SecretId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var secret-versions = SecretsmanagerFunctions.getSecretVersions(GetSecretVersionsArgs.builder()
///             .secretId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secret-versions:
///     fn::invoke:
///       function: aws:secretsmanager:getSecretVersions
///       arguments:
///         secretId: ${example.id}
/// ```
///
///
/// ### Retrieve Specific Secret Version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const by_version_stage = aws.secretsmanager.getSecretVersion({
///     secretId: example.id,
///     versionStage: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_version_stage = aws.secretsmanager.get_secret_version(secret_id=example["id"],
///     version_stage="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var by_version_stage = Aws.SecretsManager.GetSecretVersion.Invoke(new()
///     {
///         SecretId = example.Id,
///         VersionStage = "example",
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
/// 		_, err := secretsmanager.LookupSecretVersion(ctx, &secretsmanager.LookupSecretVersionArgs{
/// 			SecretId:     example.Id,
/// 			VersionStage: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var by-version-stage = SecretsmanagerFunctions.getSecretVersion(GetSecretVersionArgs.builder()
///             .secretId(example.id())
///             .versionStage("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   by-version-stage:
///     fn::invoke:
///       function: aws:secretsmanager:getSecretVersion
///       arguments:
///         secretId: ${example.id}
///         versionStage: example
/// ```
///
///
/// ### Handling Key-Value Secret Strings in JSON
///
/// Reading key-value pairs from JSON back into a native Terraform map can be accomplished in Terraform 0.12 and later with the `jsondecode()` function:
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
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsmanager_get_secret_versions_get_secret_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretVersionsResult> getSecretVersions(
  GetSecretVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecretVersions:getSecretVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretVersionsResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Secrets Manager secrets matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.secretsmanager.getSecrets({
///     filters: [{
///         name: "name",
///         values: ["example"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.get_secrets(filters=[{
///     "name": "name",
///     "values": ["example"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SecretsManager.GetSecrets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.SecretsManager.Inputs.GetSecretsFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "example",
///                 },
///             },
///         },
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
/// 		_, err := secretsmanager.GetSecrets(ctx, &secretsmanager.GetSecretsArgs{
/// 			Filters: []secretsmanager.GetSecretsFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"example",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.secretsmanager.SecretsmanagerFunctions;
/// import com.pulumi.aws.secretsmanager.inputs.GetSecretsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = SecretsmanagerFunctions.getSecrets(GetSecretsArgs.builder()
///             .filters(GetSecretsFilterArgs.builder()
///                 .name("name")
///                 .values("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:secretsmanager:getSecrets
///       arguments:
///         filters:
///           - name: name
///             values:
///               - example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_secretsmanager_get_secrets_get_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecrets:getSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}
