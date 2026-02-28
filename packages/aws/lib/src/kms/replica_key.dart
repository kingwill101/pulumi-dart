import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_key_args.dart';

/// Manages a KMS multi-Region replica key.
///
/// ## Example Usage
///
/// ### AWS Provider v6 (and below)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.kms.Key("primary", {
///     description: "Multi-Region primary key",
///     deletionWindowInDays: 30,
///     multiRegion: true,
/// });
/// const replica = new aws.kms.ReplicaKey("replica", {
///     description: "Multi-Region replica key",
///     deletionWindowInDays: 7,
///     primaryKeyArn: primary.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.kms.Key("primary",
///     description="Multi-Region primary key",
///     deletion_window_in_days=30,
///     multi_region=True)
/// replica = aws.kms.ReplicaKey("replica",
///     description="Multi-Region replica key",
///     deletion_window_in_days=7,
///     primary_key_arn=primary.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.Kms.Key("primary", new()
///     {
///         Description = "Multi-Region primary key",
///         DeletionWindowInDays = 30,
///         MultiRegion = true,
///     });
///
///     var replica = new Aws.Kms.ReplicaKey("replica", new()
///     {
///         Description = "Multi-Region replica key",
///         DeletionWindowInDays = 7,
///         PrimaryKeyArn = primary.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := kms.NewKey(ctx, "primary", &kms.KeyArgs{
/// 			Description:          pulumi.String("Multi-Region primary key"),
/// 			DeletionWindowInDays: pulumi.Int(30),
/// 			MultiRegion:          pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewReplicaKey(ctx, "replica", &kms.ReplicaKeyArgs{
/// 			Description:          pulumi.String("Multi-Region replica key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			PrimaryKeyArn:        primary.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.kms.ReplicaKey;
/// import com.pulumi.aws.kms.ReplicaKeyArgs;
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
///         var primary = new Key("primary", KeyArgs.builder()
///             .description("Multi-Region primary key")
///             .deletionWindowInDays(30)
///             .multiRegion(true)
///             .build());
///
///         var replica = new ReplicaKey("replica", ReplicaKeyArgs.builder()
///             .description("Multi-Region replica key")
///             .deletionWindowInDays(7)
///             .primaryKeyArn(primary.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:kms:Key
///     properties:
///       description: Multi-Region primary key
///       deletionWindowInDays: 30
///       multiRegion: true
///   replica:
///     type: aws:kms:ReplicaKey
///     properties:
///       description: Multi-Region replica key
///       deletionWindowInDays: 7
///       primaryKeyArn: ${primary.arn}
/// ```
///
///
/// ### AWS Provider v7 (and above)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.kms.Key("primary", {
///     region: "us-east-1",
///     description: "Multi-Region primary key",
///     deletionWindowInDays: 30,
///     multiRegion: true,
/// });
/// const replica = new aws.kms.ReplicaKey("replica", {
///     description: "Multi-Region replica key",
///     deletionWindowInDays: 7,
///     primaryKeyArn: primary.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.kms.Key("primary",
///     region="us-east-1",
///     description="Multi-Region primary key",
///     deletion_window_in_days=30,
///     multi_region=True)
/// replica = aws.kms.ReplicaKey("replica",
///     description="Multi-Region replica key",
///     deletion_window_in_days=7,
///     primary_key_arn=primary.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.Kms.Key("primary", new()
///     {
///         Region = "us-east-1",
///         Description = "Multi-Region primary key",
///         DeletionWindowInDays = 30,
///         MultiRegion = true,
///     });
///
///     var replica = new Aws.Kms.ReplicaKey("replica", new()
///     {
///         Description = "Multi-Region replica key",
///         DeletionWindowInDays = 7,
///         PrimaryKeyArn = primary.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := kms.NewKey(ctx, "primary", &kms.KeyArgs{
/// 			Region:               pulumi.String("us-east-1"),
/// 			Description:          pulumi.String("Multi-Region primary key"),
/// 			DeletionWindowInDays: pulumi.Int(30),
/// 			MultiRegion:          pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewReplicaKey(ctx, "replica", &kms.ReplicaKeyArgs{
/// 			Description:          pulumi.String("Multi-Region replica key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			PrimaryKeyArn:        primary.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.kms.ReplicaKey;
/// import com.pulumi.aws.kms.ReplicaKeyArgs;
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
///         var primary = new Key("primary", KeyArgs.builder()
///             .region("us-east-1")
///             .description("Multi-Region primary key")
///             .deletionWindowInDays(30)
///             .multiRegion(true)
///             .build());
///
///         var replica = new ReplicaKey("replica", ReplicaKeyArgs.builder()
///             .description("Multi-Region replica key")
///             .deletionWindowInDays(7)
///             .primaryKeyArn(primary.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:kms:Key
///     properties:
///       region: us-east-1
///       description: Multi-Region primary key
///       deletionWindowInDays: 30
///       multiRegion: true
///   replica:
///     type: aws:kms:ReplicaKey
///     properties:
///       description: Multi-Region replica key
///       deletionWindowInDays: 7
///       primaryKeyArn: ${primary.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS multi-Region replica keys using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/replicaKey:ReplicaKey example 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class ReplicaKey extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  late final pulumi.Output<String> arn;

  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  /// The default value is `false`.
  late final pulumi.Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  late final pulumi.Output<int?> deletionWindowInDays;

  /// A description of the KMS key.
  late final pulumi.Output<String?> description;

  /// Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is `true`.
  late final pulumi.Output<bool?> enabled;

  /// The key ID of the replica key. Related multi-Region keys have the same key ID.
  late final pulumi.Output<String> keyId;

  /// A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys.
  late final pulumi.Output<bool> keyRotationEnabled;

  /// The type of key material in the KMS key. This is a shared property of multi-Region keys.
  late final pulumi.Output<String> keySpec;

  /// The [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  late final pulumi.Output<String> keyUsage;

  /// The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  late final pulumi.Output<String> policy;

  /// The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  late final pulumi.Output<String> primaryKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the replica key. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ReplicaKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaKey]. {@macro pulumi_kms_replica_key_replica_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaKey(
    String name, {
    ReplicaKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/replicaKey:ReplicaKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.keyId = registerOutput<String>('keyId');
    this.keyRotationEnabled = registerOutput<bool>('keyRotationEnabled');
    this.keySpec = registerOutput<String>('keySpec');
    this.keyUsage = registerOutput<String>('keyUsage');
    this.policy = registerOutput<String>('policy');
    this.primaryKeyArn = registerOutput<String>('primaryKeyArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
