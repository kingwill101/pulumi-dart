import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_args.dart';
import 'secret_replica.dart';
import 'secret_state.dart';

/// Provides a resource to manage AWS Secrets Manager secret metadata. To manage secret rotation, see the `aws.secretsmanager.SecretRotation` resource. To manage a secret value, see the `aws.secretsmanager.SecretVersion` resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
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
///     var example = new Aws.SecretsManager.Secret("example", new()
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
/// 		_, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example"),
/// 		})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Secret("example", SecretArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Secrets Manager secret.
///
///
/// Using `pulumi import`, import `aws.secretsmanager.Secret` using the secret Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/secret:Secret example arn:aws:secretsmanager:us-east-1:123456789012:secret:example-123456
/// ```
class Secret extends pulumi.CustomResource {
  /// ARN of the secret.
  late final pulumi.Output<String> arn;
  /// Description of the secret.
  late final pulumi.Output<String?> description;
  /// Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
  late final pulumi.Output<bool?> forceOverwriteReplicaSecret;
  /// ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
  late final pulumi.Output<String?> kmsKeyId;
  /// Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: `/_+=.@-` Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.secretsmanager.SecretPolicy`. To delete the `policy`, set it to `"{}"` (an empty JSON document).
  late final pulumi.Output<String> policy;
  /// Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be `0` to force deletion without recovery or range from `7` to `30` days. The default value is `30`.
  late final pulumi.Output<int?> recoveryWindowInDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block to support secret replication. See details below.
  late final pulumi.Output<List<SecretReplica>> replicas;
  /// Key-value map of user-defined tags that are attached to the secret. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_secretsmanager_secret_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secret:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.forceOverwriteReplicaSecret = registerOutput<bool?>('forceOverwriteReplicaSecret');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    this.region = registerOutput<String>('region');
    this.replicas = registerOutput<List<SecretReplica>>('replicas');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Secret] resource's state with the given [name] and [id].
  static Secret get(
    String name,
    pulumi.Input<String> id, {
    SecretState? state,
  }) {
    return Secret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Secret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/secret:Secret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.forceOverwriteReplicaSecret = registerOutput<bool?>('forceOverwriteReplicaSecret');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.recoveryWindowInDays = registerOutput<int?>('recoveryWindowInDays');
    this.region = registerOutput<String>('region');
    this.replicas = registerOutput<List<SecretReplica>>('replicas');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
