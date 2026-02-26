import 'package:pulumi/pulumi.dart';
import '../crypto_key_key_access_justifications_policy/crypto_key_key_access_justifications_policy.dart';
import '../crypto_key_primary/crypto_key_primary.dart';
import '../crypto_key_version_template/crypto_key_version_template.dart';
import 'crypto_key_args.dart';

/// A `CryptoKey` represents a logical key that can be used for cryptographic operations.
///
///
/// > **Note:** CryptoKeys cannot be deleted from Google Cloud Platform.
/// Destroying a provider-managed CryptoKey will remove it from state
/// and delete all CryptoKeyVersions, rendering the key unusable, but *will
/// not delete the resource from the project.* When the provider destroys these keys,
/// any data previously encrypted with these keys will be irrecoverable.
/// For this reason, it is strongly recommended that you use Pulumi's [protect resource option](https://www.pulumi.com/docs/concepts/options/protect/).
///
///
/// To get more information about CryptoKey, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys)
/// * How-to Guides
/// * [Creating a key](https://cloud.google.com/kms/docs/creating-keys#create_a_key)
///
/// ## Example Usage
///
/// ### Kms Crypto Key Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
/// name: "keyring-example",
/// location: "global",
/// });
/// const example_key = new gcp.kms.CryptoKey("example-key", {
/// name: "crypto-key-example",
/// keyRing: keyring.id,
/// rotationPeriod: "7776000s",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
/// name="keyring-example",
/// location="global")
/// example_key = gcp.kms.CryptoKey("example-key",
/// name="crypto-key-example",
/// key_ring=keyring.id,
/// rotation_period="7776000s")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var keyring = new Gcp.Kms.KeyRing("keyring", new()
/// {
/// Name = "keyring-example",
/// Location = "global",
/// });
///
/// var example_key = new Gcp.Kms.CryptoKey("example-key", new()
/// {
/// Name = "crypto-key-example",
/// KeyRing = keyring.Id,
/// RotationPeriod = "7776000s",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// Name:     pulumi.String("keyring-example"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKey(ctx, "example-key", &kms.CryptoKeyArgs{
/// Name:           pulumi.String("crypto-key-example"),
/// KeyRing:        keyring.ID(),
/// RotationPeriod: pulumi.String("7776000s"),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
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
/// var keyring = new KeyRing("keyring", KeyRingArgs.builder()
/// .name("keyring-example")
/// .location("global")
/// .build());
///
/// var example_key = new CryptoKey("example-key", CryptoKeyArgs.builder()
/// .name("crypto-key-example")
/// .keyRing(keyring.id())
/// .rotationPeriod("7776000s")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// keyring:
/// type: gcp:kms:KeyRing
/// properties:
/// name: keyring-example
/// location: global
/// example-key:
/// type: gcp:kms:CryptoKey
/// properties:
/// name: crypto-key-example
/// keyRing: ${keyring.id}
/// rotationPeriod: 7776000s
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Kms Crypto Key Asymmetric Sign
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
/// name: "keyring-example",
/// location: "global",
/// });
/// const example_asymmetric_sign_key = new gcp.kms.CryptoKey("example-asymmetric-sign-key", {
/// name: "crypto-key-example",
/// keyRing: keyring.id,
/// purpose: "ASYMMETRIC_SIGN",
/// versionTemplate: {
/// algorithm: "EC_SIGN_P384_SHA384",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
/// name="keyring-example",
/// location="global")
/// example_asymmetric_sign_key = gcp.kms.CryptoKey("example-asymmetric-sign-key",
/// name="crypto-key-example",
/// key_ring=keyring.id,
/// purpose="ASYMMETRIC_SIGN",
/// version_template={
/// "algorithm": "EC_SIGN_P384_SHA384",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var keyring = new Gcp.Kms.KeyRing("keyring", new()
/// {
/// Name = "keyring-example",
/// Location = "global",
/// });
///
/// var example_asymmetric_sign_key = new Gcp.Kms.CryptoKey("example-asymmetric-sign-key", new()
/// {
/// Name = "crypto-key-example",
/// KeyRing = keyring.Id,
/// Purpose = "ASYMMETRIC_SIGN",
/// VersionTemplate = new Gcp.Kms.Inputs.CryptoKeyVersionTemplateArgs
/// {
/// Algorithm = "EC_SIGN_P384_SHA384",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// Name:     pulumi.String("keyring-example"),
/// Location: pulumi.String("global"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKey(ctx, "example-asymmetric-sign-key", &kms.CryptoKeyArgs{
/// Name:    pulumi.String("crypto-key-example"),
/// KeyRing: keyring.ID(),
/// Purpose: pulumi.String("ASYMMETRIC_SIGN"),
/// VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// Algorithm: pulumi.String("EC_SIGN_P384_SHA384"),
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
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
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
/// var keyring = new KeyRing("keyring", KeyRingArgs.builder()
/// .name("keyring-example")
/// .location("global")
/// .build());
///
/// var example_asymmetric_sign_key = new CryptoKey("example-asymmetric-sign-key", CryptoKeyArgs.builder()
/// .name("crypto-key-example")
/// .keyRing(keyring.id())
/// .purpose("ASYMMETRIC_SIGN")
/// .versionTemplate(CryptoKeyVersionTemplateArgs.builder()
/// .algorithm("EC_SIGN_P384_SHA384")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// keyring:
/// type: gcp:kms:KeyRing
/// properties:
/// name: keyring-example
/// location: global
/// example-asymmetric-sign-key:
/// type: gcp:kms:CryptoKey
/// properties:
/// name: crypto-key-example
/// keyRing: ${keyring.id}
/// purpose: ASYMMETRIC_SIGN
/// versionTemplate:
/// algorithm: EC_SIGN_P384_SHA384
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CryptoKey can be imported using any of these accepted formats:
///
/// * `{{key_ring}}/cryptoKeys/{{name}}`
///
/// * `{{key_ring}}/{{name}}`
///
/// When using the `pulumi import` command, CryptoKey can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKey:CryptoKey default {{key_ring}}/cryptoKeys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKey:CryptoKey default {{key_ring}}/{{name}}
/// ```
class CryptoKey extends CustomResource {
  /// The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// The resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.
  late final Output<String> cryptoKeyBackend;

  /// The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// If not specified at creation time, the default duration is 30 days.
  late final Output<String> destroyScheduledDuration;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether this key may contain imported versions only.
  late final Output<bool> importOnly;

  /// The policy used for Key Access Justifications Policy Enforcement. If this
  /// field is present and this key is enrolled in Key Access Justifications
  /// Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and
  /// sign operations, and the operation will fail if rejected by the policy. The
  /// policy is defined by specifying zero or more allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  /// This field is currently in beta and is subject to change.
  /// Structure is documented below.
  late final Output<CryptoKeyKeyAccessJustificationsPolicy>
      keyAccessJustificationsPolicy;

  /// The KeyRing that this key belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  late final Output<String> keyRing;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource name for the CryptoKey.
  late final Output<String> name;

  /// A copy of the primary CryptoKeyVersion that will be used by cryptoKeys.encrypt when this CryptoKey is given in EncryptRequest.name.
  /// Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be unset.
  /// Structure is documented below.
  late final Output<List<CryptoKeyPrimary>> primaries;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The immutable purpose of this CryptoKey. See the
  /// [purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
  /// for possible inputs.
  /// Default value is "ENCRYPT_DECRYPT".
  late final Output<String?> purpose;

  /// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// The first rotation will take place after the specified period. The rotation period has
  /// the format of a decimal number with up to 9 fractional digits, followed by the
  /// letter <span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span> (seconds). It must be greater than a day (ie, 86400).
  late final Output<String?> rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// You must use the <span pulumi-lang-nodejs="`gcp.kms.CryptoKeyVersion`" pulumi-lang-dotnet="`gcp.kms.CryptoKeyVersion`" pulumi-lang-go="`kms.CryptoKeyVersion`" pulumi-lang-python="`kms.CryptoKeyVersion`" pulumi-lang-yaml="`gcp.kms.CryptoKeyVersion`" pulumi-lang-java="`gcp.kms.CryptoKeyVersion`">`gcp.kms.CryptoKeyVersion`</span> resource to create a new CryptoKeyVersion
  /// or <span pulumi-lang-nodejs="`gcp.kms.KeyRingImportJob`" pulumi-lang-dotnet="`gcp.kms.KeyRingImportJob`" pulumi-lang-go="`kms.KeyRingImportJob`" pulumi-lang-python="`kms.KeyRingImportJob`" pulumi-lang-yaml="`gcp.kms.KeyRingImportJob`" pulumi-lang-java="`gcp.kms.KeyRingImportJob`">`gcp.kms.KeyRingImportJob`</span> resource to import the CryptoKeyVersion.
  /// This field is only applicable during initial CryptoKey creation.
  late final Output<bool?> skipInitialVersionCreation;

  /// A template describing settings for new crypto key versions.
  /// Structure is documented below.
  late final Output<CryptoKeyVersionTemplate> versionTemplate;

  CryptoKey(
    String name, {
    CryptoKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKey:CryptoKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cryptoKeyBackend = Output.createUnknown<String>();
    this.destroyScheduledDuration = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.importOnly = Output.createUnknown<bool>();
    this.keyAccessJustificationsPolicy =
        Output.createUnknown<CryptoKeyKeyAccessJustificationsPolicy>();
    this.keyRing = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.primaries = Output.createUnknown<List<CryptoKeyPrimary>>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.purpose = Output.createUnknown<String?>();
    this.rotationPeriod = Output.createUnknown<String?>();
    this.skipInitialVersionCreation = Output.createUnknown<bool?>();
    this.versionTemplate = Output.createUnknown<CryptoKeyVersionTemplate>();
  }
}
