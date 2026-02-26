import 'package:pulumi/pulumi.dart';
import '../key_key_attribute/key_key_attribute.dart';
import '../key_timeouts/key_timeouts.dart';
import 'key_args2.dart';

/// Resource for managing an AWS Payment Cryptography Control Plane Key.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.paymentcryptography.Key("test", {
/// exportable: true,
/// keyAttributes: [{
/// keyAlgorithm: "TDES_3KEY",
/// keyClass: "SYMMETRIC_KEY",
/// keyUsage: "TR31_P0_PIN_ENCRYPTION_KEY",
/// keyModesOfUses: [{
/// decrypt: true,
/// encrypt: true,
/// wrap: true,
/// unwrap: true,
/// }],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.paymentcryptography.Key("test",
/// exportable=True,
/// key_attributes=[{
/// "key_algorithm": "TDES_3KEY",
/// "key_class": "SYMMETRIC_KEY",
/// "key_usage": "TR31_P0_PIN_ENCRYPTION_KEY",
/// "key_modes_of_uses": [{
/// "decrypt": True,
/// "encrypt": True,
/// "wrap": True,
/// "unwrap": True,
/// }],
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
/// var test = new Aws.PaymentCryptography.Key("test", new()
/// {
/// Exportable = true,
/// KeyAttributes = new[]
/// {
/// new Aws.PaymentCryptography.Inputs.KeyKeyAttributeArgs
/// {
/// KeyAlgorithm = "TDES_3KEY",
/// KeyClass = "SYMMETRIC_KEY",
/// KeyUsage = "TR31_P0_PIN_ENCRYPTION_KEY",
/// KeyModesOfUses = new[]
/// {
/// new Aws.PaymentCryptography.Inputs.KeyKeyAttributeKeyModesOfUseArgs
/// {
/// Decrypt = true,
/// Encrypt = true,
/// Wrap = true,
/// Unwrap = true,
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/paymentcryptography"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := paymentcryptography.NewKey(ctx, "test", &paymentcryptography.KeyArgs{
/// Exportable: pulumi.Bool(true),
/// KeyAttributes: paymentcryptography.KeyKeyAttributeArray{
/// &paymentcryptography.KeyKeyAttributeArgs{
/// KeyAlgorithm: pulumi.String("TDES_3KEY"),
/// KeyClass:     pulumi.String("SYMMETRIC_KEY"),
/// KeyUsage:     pulumi.String("TR31_P0_PIN_ENCRYPTION_KEY"),
/// KeyModesOfUses: paymentcryptography.KeyKeyAttributeKeyModesOfUseArray{
/// &paymentcryptography.KeyKeyAttributeKeyModesOfUseArgs{
/// Decrypt: pulumi.Bool(true),
/// Encrypt: pulumi.Bool(true),
/// Wrap:    pulumi.Bool(true),
/// Unwrap:  pulumi.Bool(true),
/// },
/// },
/// },
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new Key("test", KeyArgs.builder()
/// .exportable(true)
/// .keyAttributes(KeyKeyAttributeArgs.builder()
/// .keyAlgorithm("TDES_3KEY")
/// .keyClass("SYMMETRIC_KEY")
/// .keyUsage("TR31_P0_PIN_ENCRYPTION_KEY")
/// .keyModesOfUses(KeyKeyAttributeKeyModesOfUseArgs.builder()
/// .decrypt(true)
/// .encrypt(true)
/// .wrap(true)
/// .unwrap(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:paymentcryptography:Key
/// properties:
/// exportable: true
/// keyAttributes:
/// - keyAlgorithm: TDES_3KEY
/// keyClass: SYMMETRIC_KEY
/// keyUsage: TR31_P0_PIN_ENCRYPTION_KEY
/// keyModesOfUses:
/// - decrypt: true
/// encrypt: true
/// wrap: true
/// unwrap: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Payment Cryptography key.
///
///
/// Using `pulumi import`, import Payment Cryptography Control Plane Key using the `arn:aws:payment-cryptography:us-east-1:123456789012:key/qtbojf64yshyvyzf`. For example:
///
/// ```sh
/// $ pulumi import aws:paymentcryptography/key:Key example arn:aws:payment-cryptography:us-east-1:123456789012:key/qtbojf64yshyvyzf
/// ```
class Key2 extends CustomResource {
  /// ARN of the key.
  late final Output<String> arn;
  late final Output<int> deletionWindowInDays;

  /// Whether to enable the key.
  late final Output<bool> enabled;

  /// Whether the key is exportable from the service.
  late final Output<bool> exportable;

  /// Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  ///
  /// The following arguments are optional:
  late final Output<List<KeyKeyAttribute>?> keyAttributes;

  /// Key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.
  late final Output<String> keyCheckValue;

  /// Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  late final Output<String> keyCheckValueAlgorithm;

  /// Source of the key material.
  late final Output<String> keyOrigin;

  /// State of key that is being created or deleted.
  late final Output<String> keyState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<KeyTimeouts?> timeouts;

  Key2(
    String name, {
    KeyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:paymentcryptography/key:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionWindowInDays = Output.createUnknown<int>();
    this.enabled = Output.createUnknown<bool>();
    this.exportable = Output.createUnknown<bool>();
    this.keyAttributes = Output.createUnknown<List<KeyKeyAttribute>?>();
    this.keyCheckValue = Output.createUnknown<String>();
    this.keyCheckValueAlgorithm = Output.createUnknown<String>();
    this.keyOrigin = Output.createUnknown<String>();
    this.keyState = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<KeyTimeouts?>();
  }
}
