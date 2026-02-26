import 'package:pulumi/pulumi.dart';
import '../secret_replica/secret_replica.dart';
import 'secret_args.dart';

/// Provides a resource to manage AWS Secrets Manager secret metadata. To manage secret rotation, see the <span pulumi-lang-nodejs="`aws.secretsmanager.SecretRotation`" pulumi-lang-dotnet="`aws.secretsmanager.SecretRotation`" pulumi-lang-go="`secretsmanager.SecretRotation`" pulumi-lang-python="`secretsmanager.SecretRotation`" pulumi-lang-yaml="`aws.secretsmanager.SecretRotation`" pulumi-lang-java="`aws.secretsmanager.SecretRotation`">`aws.secretsmanager.SecretRotation`</span> resource. To manage a secret value, see the <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span> resource.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.secretsmanager.Secret("example", {name: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.secretsmanager.Secret("example", name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecretsManager.Secret("example", new()
/// {
/// Name = "example",
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
/// _, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// Name: pulumi.String("example"),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
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
/// var example = new Secret("example", SecretArgs.builder()
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:secretsmanager:Secret
/// properties:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Secrets Manager secret.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secret:Secret example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class Secret extends CustomResource {
  /// ARN of the secret.
  late final Output<String> arn;

  /// Description of the secret.
  late final Output<String?> description;

  /// Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
  late final Output<bool?> forceOverwriteReplicaSecret;

  /// ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
  late final Output<String?> kmsKeyId;

  /// Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: `/_+=.@-` Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Removing <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> from your configuration or setting <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by <span pulumi-lang-nodejs="`aws.secretsmanager.SecretPolicy`" pulumi-lang-dotnet="`aws.secretsmanager.SecretPolicy`" pulumi-lang-go="`secretsmanager.SecretPolicy`" pulumi-lang-python="`secretsmanager.SecretPolicy`" pulumi-lang-yaml="`aws.secretsmanager.SecretPolicy`" pulumi-lang-java="`aws.secretsmanager.SecretPolicy`">`aws.secretsmanager.SecretPolicy`</span>. To delete the <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>, set it to `"{}"` (an empty JSON document).
  late final Output<String> policy;

  /// Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to force deletion without recovery or range from <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span> to <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span> days. The default value is <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>.
  late final Output<int?> recoveryWindowInDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block to support secret replication. See details below.
  late final Output<List<SecretReplica>> replicas;

  /// Key-value map of user-defined tags that are attached to the secret. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Secret(
    String name, {
    SecretArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secret:Secret',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.forceOverwriteReplicaSecret = Output.createUnknown<bool?>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.recoveryWindowInDays = Output.createUnknown<int?>();
    this.region = Output.createUnknown<String>();
    this.replicas = Output.createUnknown<List<SecretReplica>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
