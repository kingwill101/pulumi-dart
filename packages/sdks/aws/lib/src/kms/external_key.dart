import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_key_args.dart';
import 'external_key_state.dart';

/// Manages a single-Region or multi-Region primary KMS key that uses external key material.
/// To instead manage a single-Region or multi-Region primary KMS key where AWS automatically generates and potentially rotates key material, see the `aws.kms.Key` resource.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.ExternalKey("example", {description: "KMS EXTERNAL for AMI encryption"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.ExternalKey("example", description="KMS EXTERNAL for AMI encryption")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.ExternalKey("example", new()
///     {
///         Description = "KMS EXTERNAL for AMI encryption",
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
/// 		_, err := kms.NewExternalKey(ctx, "example", &kms.ExternalKeyArgs{
/// 			Description: pulumi.String("KMS EXTERNAL for AMI encryption"),
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
/// resource "aws_kms_externalkey" "example" {
///   description = "KMS EXTERNAL for AMI encryption"
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
///         var example = new ExternalKey("example", ExternalKeyArgs.builder()
///             .description("KMS EXTERNAL for AMI encryption")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:ExternalKey
///     properties:
///       description: KMS EXTERNAL for AMI encryption
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS External Keys using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/externalKey:ExternalKey a arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class ExternalKey extends pulumi.CustomResource {
  /// ARN of the key.
  late final pulumi.Output<String> arn;
  /// Whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to `true` increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the KMS Developer Guide. Defaults to `false`.
  late final pulumi.Output<bool?> bypassPolicyLockoutSafetyCheck;
  /// Duration in days after which the key is deleted after destruction of the resource. Must be between `7` and `30` days. Defaults to `30`.
  late final pulumi.Output<int?> deletionWindowInDays;
  /// Description of the key.
  late final pulumi.Output<String?> description;
  /// Specifies whether the key is enabled. Keys pending import can only be `false`. Imported keys default to `true` unless expired.
  late final pulumi.Output<bool> enabled;
  /// Whether the key material expires. Empty when pending key material import, otherwise `KEY_MATERIAL_EXPIRES` or `KEY_MATERIAL_DOES_NOT_EXPIRE`.
  late final pulumi.Output<String> expirationModel;
  /// Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material.
  late final pulumi.Output<String?> keyMaterialBase64;
  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, or `SM2` (China Regions only). Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  late final pulumi.Output<String> keySpec;
  /// The state of the CMK.
  late final pulumi.Output<String> keyState;
  /// Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`. Defaults to `ENCRYPT_DECRYPT`.
  late final pulumi.Output<String> keyUsage;
  /// Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key. Defaults to `false`.
  late final pulumi.Output<bool> multiRegion;
  /// A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A key-value map of tags to assign to the key. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  late final pulumi.Output<String?> validTo;

  /// Creates a new [ExternalKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExternalKey]. {@macro pulumi_kms_external_key_external_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExternalKey(
    String name, {
    ExternalKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/externalKey:ExternalKey',
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
    keyMaterialBase64 = registerOutput<String?>('keyMaterialBase64', isSecret: true);
    keySpec = registerOutput<String>('keySpec');
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    multiRegion = registerOutput<bool>('multiRegion');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validTo = registerOutput<String?>('validTo');
  }

  /// Gets an existing [ExternalKey] resource's state with the given [name] and [id].
  static ExternalKey get(
    String name,
    pulumi.Input<String> id, {
    ExternalKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ExternalKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ExternalKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/externalKey:ExternalKey',
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
    keyMaterialBase64 = registerOutput<String?>('keyMaterialBase64', isSecret: true);
    keySpec = registerOutput<String>('keySpec');
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    multiRegion = registerOutput<bool>('multiRegion');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validTo = registerOutput<String?>('validTo');
  }

  /// Creates a typed reference to an existing [ExternalKey] resource.
  ExternalKey.reference(String urn)
    : super(
        'aws:kms/externalKey:ExternalKey',
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
    keyMaterialBase64 = registerOutput<String?>('keyMaterialBase64', isSecret: true);
    keySpec = registerOutput<String>('keySpec');
    keyState = registerOutput<String>('keyState');
    keyUsage = registerOutput<String>('keyUsage');
    multiRegion = registerOutput<bool>('multiRegion');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    validTo = registerOutput<String?>('validTo');
  }
}
