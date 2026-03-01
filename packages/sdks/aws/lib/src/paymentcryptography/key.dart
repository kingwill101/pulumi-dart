import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';
import 'key_key_attribute.dart';
import 'key_state.dart';
import 'key_timeouts.dart';

/// Resource for managing an AWS Payment Cryptography Control Plane Key.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.paymentcryptography.Key("test", {
///     exportable: true,
///     keyAttributes: [{
///         keyAlgorithm: "TDES_3KEY",
///         keyClass: "SYMMETRIC_KEY",
///         keyUsage: "TR31_P0_PIN_ENCRYPTION_KEY",
///         keyModesOfUses: [{
///             decrypt: true,
///             encrypt: true,
///             wrap: true,
///             unwrap: true,
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.paymentcryptography.Key("test",
///     exportable=True,
///     key_attributes=[{
///         "key_algorithm": "TDES_3KEY",
///         "key_class": "SYMMETRIC_KEY",
///         "key_usage": "TR31_P0_PIN_ENCRYPTION_KEY",
///         "key_modes_of_uses": [{
///             "decrypt": True,
///             "encrypt": True,
///             "wrap": True,
///             "unwrap": True,
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.PaymentCryptography.Key("test", new()
///     {
///         Exportable = true,
///         KeyAttributes = new[]
///         {
///             new Aws.PaymentCryptography.Inputs.KeyKeyAttributeArgs
///             {
///                 KeyAlgorithm = "TDES_3KEY",
///                 KeyClass = "SYMMETRIC_KEY",
///                 KeyUsage = "TR31_P0_PIN_ENCRYPTION_KEY",
///                 KeyModesOfUses = new[]
///                 {
///                     new Aws.PaymentCryptography.Inputs.KeyKeyAttributeKeyModesOfUseArgs
///                     {
///                         Decrypt = true,
///                         Encrypt = true,
///                         Wrap = true,
///                         Unwrap = true,
///                     },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/paymentcryptography"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := paymentcryptography.NewKey(ctx, "test", &paymentcryptography.KeyArgs{
/// 			Exportable: pulumi.Bool(true),
/// 			KeyAttributes: paymentcryptography.KeyKeyAttributeArray{
/// 				&paymentcryptography.KeyKeyAttributeArgs{
/// 					KeyAlgorithm: pulumi.String("TDES_3KEY"),
/// 					KeyClass:     pulumi.String("SYMMETRIC_KEY"),
/// 					KeyUsage:     pulumi.String("TR31_P0_PIN_ENCRYPTION_KEY"),
/// 					KeyModesOfUses: paymentcryptography.KeyKeyAttributeKeyModesOfUseArray{
/// 						&paymentcryptography.KeyKeyAttributeKeyModesOfUseArgs{
/// 							Decrypt: pulumi.Bool(true),
/// 							Encrypt: pulumi.Bool(true),
/// 							Wrap:    pulumi.Bool(true),
/// 							Unwrap:  pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.paymentcryptography.Key;
/// import com.pulumi.aws.paymentcryptography.KeyArgs;
/// import com.pulumi.aws.paymentcryptography.inputs.KeyKeyAttributeArgs;
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
///         var test = new Key("test", KeyArgs.builder()
///             .exportable(true)
///             .keyAttributes(KeyKeyAttributeArgs.builder()
///                 .keyAlgorithm("TDES_3KEY")
///                 .keyClass("SYMMETRIC_KEY")
///                 .keyUsage("TR31_P0_PIN_ENCRYPTION_KEY")
///                 .keyModesOfUses(KeyKeyAttributeKeyModesOfUseArgs.builder()
///                     .decrypt(true)
///                     .encrypt(true)
///                     .wrap(true)
///                     .unwrap(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:paymentcryptography:Key
///     properties:
///       exportable: true
///       keyAttributes:
///         - keyAlgorithm: TDES_3KEY
///           keyClass: SYMMETRIC_KEY
///           keyUsage: TR31_P0_PIN_ENCRYPTION_KEY
///           keyModesOfUses:
///             - decrypt: true
///               encrypt: true
///               wrap: true
///               unwrap: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Payment Cryptography key.
///
///
/// Using `pulumi import`, import Payment Cryptography Control Plane Key using the `arn:aws:payment-cryptography:us-east-1:123456789012:key/qtbojf64yshyvyzf`. For example:
///
/// ```sh
/// $ pulumi import aws:paymentcryptography/key:Key example arn:aws:payment-cryptography:us-east-1:123456789012:key/qtbojf64yshyvyzf
/// ```
class Key extends pulumi.CustomResource {
  /// ARN of the key.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<int> deletionWindowInDays;
  /// Whether to enable the key.
  late final pulumi.Output<bool> enabled;
  /// Whether the key is exportable from the service.
  late final pulumi.Output<bool> exportable;
  /// Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<KeyKeyAttribute>?> keyAttributes;
  /// Key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.
  late final pulumi.Output<String> keyCheckValue;
  /// Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  late final pulumi.Output<String> keyCheckValueAlgorithm;
  /// Source of the key material.
  late final pulumi.Output<String> keyOrigin;
  /// State of key that is being created or deleted.
  late final pulumi.Output<String> keyState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<KeyTimeouts?> timeouts;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_paymentcryptography_key_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(
    String name, {
    KeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:paymentcryptography/key:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionWindowInDays = registerOutput<int>('deletionWindowInDays');
    this.enabled = registerOutput<bool>('enabled');
    this.exportable = registerOutput<bool>('exportable');
    this.keyAttributes = registerOutput<List<KeyKeyAttribute>?>('keyAttributes');
    this.keyCheckValue = registerOutput<String>('keyCheckValue');
    this.keyCheckValueAlgorithm = registerOutput<String>('keyCheckValueAlgorithm');
    this.keyOrigin = registerOutput<String>('keyOrigin');
    this.keyState = registerOutput<String>('keyState');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<KeyTimeouts?>('timeouts');
  }

  /// Gets an existing [Key] resource's state with the given [name] and [id].
  static Key get(
    String name,
    pulumi.Input<String> id, {
    KeyState? state,
  }) {
    return Key._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Key._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:paymentcryptography/key:Key',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionWindowInDays = registerOutput<int>('deletionWindowInDays');
    this.enabled = registerOutput<bool>('enabled');
    this.exportable = registerOutput<bool>('exportable');
    this.keyAttributes = registerOutput<List<KeyKeyAttribute>?>('keyAttributes');
    this.keyCheckValue = registerOutput<String>('keyCheckValue');
    this.keyCheckValueAlgorithm = registerOutput<String>('keyCheckValueAlgorithm');
    this.keyOrigin = registerOutput<String>('keyOrigin');
    this.keyState = registerOutput<String>('keyState');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<KeyTimeouts?>('timeouts');
  }
}
