import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_external_key_args.dart';
import 'replica_external_key_state.dart';

/// Manages a KMS multi-Region replica key that uses external key material.
/// See the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-import.html) for more information on importing key material into multi-Region keys.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.kms.ExternalKey("primary", {
///     description: "Multi-Region primary key",
///     deletionWindowInDays: 30,
///     multiRegion: true,
///     enabled: true,
///     keyMaterialBase64: "...",
/// });
/// const replica = new aws.kms.ReplicaExternalKey("replica", {
///     description: "Multi-Region replica key",
///     deletionWindowInDays: 7,
///     primaryKeyArn: primary.arn,
///     keyMaterialBase64: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.kms.ExternalKey("primary",
///     description="Multi-Region primary key",
///     deletion_window_in_days=30,
///     multi_region=True,
///     enabled=True,
///     key_material_base64="...")
/// replica = aws.kms.ReplicaExternalKey("replica",
///     description="Multi-Region replica key",
///     deletion_window_in_days=7,
///     primary_key_arn=primary.arn,
///     key_material_base64="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.Kms.ExternalKey("primary", new()
///     {
///         Description = "Multi-Region primary key",
///         DeletionWindowInDays = 30,
///         MultiRegion = true,
///         Enabled = true,
///         KeyMaterialBase64 = "...",
///     });
///
///     var replica = new Aws.Kms.ReplicaExternalKey("replica", new()
///     {
///         Description = "Multi-Region replica key",
///         DeletionWindowInDays = 7,
///         PrimaryKeyArn = primary.Arn,
///         KeyMaterialBase64 = "...",
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
/// 		primary, err := kms.NewExternalKey(ctx, "primary", &kms.ExternalKeyArgs{
/// 			Description:          pulumi.String("Multi-Region primary key"),
/// 			DeletionWindowInDays: pulumi.Int(30),
/// 			MultiRegion:          pulumi.Bool(true),
/// 			Enabled:              pulumi.Bool(true),
/// 			KeyMaterialBase64:    pulumi.String("..."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewReplicaExternalKey(ctx, "replica", &kms.ReplicaExternalKeyArgs{
/// 			Description:          pulumi.String("Multi-Region replica key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			PrimaryKeyArn:        primary.Arn,
/// 			KeyMaterialBase64:    pulumi.String("..."),
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
/// resource "aws_kms_externalkey" "primary" {
///   description             = "Multi-Region primary key"
///   deletion_window_in_days = 30
///   multi_region            = true
///   enabled                 = true
///   key_material_base64     = "..."
/// }
/// resource "aws_kms_replicaexternalkey" "replica" {
///   description             = "Multi-Region replica key"
///   deletion_window_in_days = 7
///   primary_key_arn         = aws_kms_externalkey.primary.arn
///   key_material_base64     = "..."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.ExternalKey;
/// import com.pulumi.aws.kms.ExternalKeyArgs;
/// import com.pulumi.aws.kms.ReplicaExternalKey;
/// import com.pulumi.aws.kms.ReplicaExternalKeyArgs;
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
///         var primary = new ExternalKey("primary", ExternalKeyArgs.builder()
///             .description("Multi-Region primary key")
///             .deletionWindowInDays(30)
///             .multiRegion(true)
///             .enabled(true)
///             .keyMaterialBase64("...")
///             .build());
///
///         var replica = new ReplicaExternalKey("replica", ReplicaExternalKeyArgs.builder()
///             .description("Multi-Region replica key")
///             .deletionWindowInDays(7)
///             .primaryKeyArn(primary.arn())
///             .keyMaterialBase64("...")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: aws:kms:ExternalKey
///     properties:
///       description: Multi-Region primary key
///       deletionWindowInDays: 30
///       multiRegion: true
///       enabled: true
///       keyMaterialBase64: '...'
///   replica:
///     type: aws:kms:ReplicaExternalKey
///     properties:
///       description: Multi-Region replica key
///       deletionWindowInDays: 7
///       primaryKeyArn: ${primary.arn}
///       keyMaterialBase64: '...'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS multi-Region replica keys using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/replicaExternalKey:ReplicaExternalKey example 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class ReplicaExternalKey extends pulumi.CustomResource {
  /// ARN of the replica key. The key ARNs of related multi-Region keys differ only in the Region value.
  late final pulumi.Output<String> arn;
  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS KMS Developer Guide_.
  /// The default value is `false`.
  late final pulumi.Output<bool?> bypassPolicyLockoutSafetyCheck;
  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between `7` and `30`, inclusive. If you do not specify a value, it defaults to `30`.
  late final pulumi.Output<int?> deletionWindowInDays;
  /// A description of the KMS key.
  late final pulumi.Output<String?> description;
  /// Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  late final pulumi.Output<bool> enabled;
  /// Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  late final pulumi.Output<String> expirationModel;
  /// The key ID of the replica key. Related multi-Region keys have the same key ID.
  late final pulumi.Output<String> keyId;
  /// Base64 encoded 256-bit symmetric encryption key material to import. The KMS key is permanently associated with this key material. The same key material can be [reimported](https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material), but you cannot import different key material.
  late final pulumi.Output<String?> keyMaterialBase64;
  /// The state of the replica key.
  late final pulumi.Output<String> keyState;
  /// The [cryptographic operations](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations) for which you can use the KMS key. This is a shared property of multi-Region keys.
  late final pulumi.Output<String> keyUsage;
  /// The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) to the KMS key.
  late final pulumi.Output<String> policy;
  /// The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region.
  late final pulumi.Output<String> primaryKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the replica key. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the key becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String?> validTo;

  /// Creates a new [ReplicaExternalKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicaExternalKey]. {@macro pulumi_kms_replica_external_key_replica_external_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicaExternalKey(
    String name, {
    ReplicaExternalKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/replicaExternalKey:ReplicaExternalKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['keyMaterialBase64'],
        ) {
    arn = registerOutput<String>('arn');
    bypassPolicyLockoutSafetyCheck = registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    expirationModel = registerOutput<String>('expirationModel');
    keyId = registerOutput<String>('keyId');
    keyMaterialBase64 = registerOutput<String?>('keyMaterialBase64', isSecret: true);
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    policy = registerOutput<String>('policy');
    primaryKeyArn = registerOutput<String>('primaryKeyArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validTo = registerOutput<String?>('validTo');
  }

  /// Gets an existing [ReplicaExternalKey] resource's state with the given [name] and [id].
  static ReplicaExternalKey get(
    String name,
    pulumi.Input<String> id, {
    ReplicaExternalKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReplicaExternalKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReplicaExternalKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/replicaExternalKey:ReplicaExternalKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    bypassPolicyLockoutSafetyCheck = registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    expirationModel = registerOutput<String>('expirationModel');
    keyId = registerOutput<String>('keyId');
    keyMaterialBase64 = registerOutput<String?>('keyMaterialBase64', isSecret: true);
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    policy = registerOutput<String>('policy');
    primaryKeyArn = registerOutput<String>('primaryKeyArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validTo = registerOutput<String?>('validTo');
  }

  /// Creates a typed reference to an existing [ReplicaExternalKey] resource.
  ReplicaExternalKey.reference(String urn)
    : super(
        'aws:kms/replicaExternalKey:ReplicaExternalKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['keyMaterialBase64'],
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    bypassPolicyLockoutSafetyCheck = registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    expirationModel = registerOutput<String>('expirationModel');
    keyId = registerOutput<String>('keyId');
    keyMaterialBase64 = registerOutput<String?>('keyMaterialBase64', isSecret: true);
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    policy = registerOutput<String>('policy');
    primaryKeyArn = registerOutput<String>('primaryKeyArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validTo = registerOutput<String?>('validTo');
  }
}
