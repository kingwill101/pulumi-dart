import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_alias_args.dart';

/// Resource for managing an AWS Payment Cryptography Control Plane Key Alias.
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
/// const testKeyAlias = new aws.paymentcryptography.KeyAlias("test", {
///     aliasName: "alias/test-alias",
///     keyArn: test.arn,
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
/// test_key_alias = aws.paymentcryptography.KeyAlias("test",
///     alias_name="alias/test-alias",
///     key_arn=test.arn)
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
///     var testKeyAlias = new Aws.PaymentCryptography.KeyAlias("test", new()
///     {
///         AliasName = "alias/test-alias",
///         KeyArn = test.Arn,
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
/// 		test, err := paymentcryptography.NewKey(ctx, "test", &paymentcryptography.KeyArgs{
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
/// 		_, err = paymentcryptography.NewKeyAlias(ctx, "test", &paymentcryptography.KeyAliasArgs{
/// 			AliasName: pulumi.String("alias/test-alias"),
/// 			KeyArn:    test.Arn,
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
/// import com.pulumi.aws.paymentcryptography.KeyAlias;
/// import com.pulumi.aws.paymentcryptography.KeyAliasArgs;
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
///         var testKeyAlias = new KeyAlias("testKeyAlias", KeyAliasArgs.builder()
///             .aliasName("alias/test-alias")
///             .keyArn(test.arn())
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
///   testKeyAlias:
///     type: aws:paymentcryptography:KeyAlias
///     name: test
///     properties:
///       aliasName: alias/test-alias
///       keyArn: ${test.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Payment Cryptography Control Plane Key Alias using the `alias/4681482429376900170`. For example:
///
/// ```sh
/// $ pulumi import aws:paymentcryptography/keyAlias:KeyAlias example alias/4681482429376900170
/// ```
class KeyAlias extends pulumi.CustomResource {
  /// Name of the Key Alias.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> aliasName;

  /// ARN of the key.
  late final pulumi.Output<String?> keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [KeyAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyAlias]. {@macro pulumi_paymentcryptography_key_alias_key_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyAlias(
    String name, {
    KeyAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:paymentcryptography/keyAlias:KeyAlias',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.keyArn = registerOutput<String?>('keyArn');
    this.region = registerOutput<String>('region');
  }
}
