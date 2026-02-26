import 'package:pulumi/pulumi.dart';
import '../crypto_key_version_attestation/crypto_key_version_attestation.dart';
import '../crypto_key_version_external_protection_level_options/crypto_key_version_external_protection_level_options.dart';
import 'crypto_key_version_args.dart';

/// A `CryptoKeyVersion` represents an individual cryptographic key, and the associated key material.
///
///
/// Destroying a cryptoKeyVersion will not delete the resource from the project.
///
///
/// To get more information about CryptoKeyVersion, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions)
/// * How-to Guides
/// * [Creating a key Version](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions/create)
///
/// ## Example Usage
///
/// ### Kms Crypto Key Version Basic
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
/// const cryptokey = new gcp.kms.CryptoKey("cryptokey", {
/// name: "crypto-key-example",
/// keyRing: keyring.id,
/// rotationPeriod: "7776000s",
/// });
/// const example_key = new gcp.kms.CryptoKeyVersion("example-key", {cryptoKey: cryptokey.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
/// name="keyring-example",
/// location="global")
/// cryptokey = gcp.kms.CryptoKey("cryptokey",
/// name="crypto-key-example",
/// key_ring=keyring.id,
/// rotation_period="7776000s")
/// example_key = gcp.kms.CryptoKeyVersion("example-key", crypto_key=cryptokey.id)
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
/// var cryptokey = new Gcp.Kms.CryptoKey("cryptokey", new()
/// {
/// Name = "crypto-key-example",
/// KeyRing = keyring.Id,
/// RotationPeriod = "7776000s",
/// });
///
/// var example_key = new Gcp.Kms.CryptoKeyVersion("example-key", new()
/// {
/// CryptoKey = cryptokey.Id,
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
/// cryptokey, err := kms.NewCryptoKey(ctx, "cryptokey", &kms.CryptoKeyArgs{
/// Name:           pulumi.String("crypto-key-example"),
/// KeyRing:        keyring.ID(),
/// RotationPeriod: pulumi.String("7776000s"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKeyVersion(ctx, "example-key", &kms.CryptoKeyVersionArgs{
/// CryptoKey: cryptokey.ID(),
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
/// import com.pulumi.gcp.kms.CryptoKeyVersion;
/// import com.pulumi.gcp.kms.CryptoKeyVersionArgs;
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
/// var cryptokey = new CryptoKey("cryptokey", CryptoKeyArgs.builder()
/// .name("crypto-key-example")
/// .keyRing(keyring.id())
/// .rotationPeriod("7776000s")
/// .build());
///
/// var example_key = new CryptoKeyVersion("example-key", CryptoKeyVersionArgs.builder()
/// .cryptoKey(cryptokey.id())
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
/// cryptokey:
/// type: gcp:kms:CryptoKey
/// properties:
/// name: crypto-key-example
/// keyRing: ${keyring.id}
/// rotationPeriod: 7776000s
/// example-key:
/// type: gcp:kms:CryptoKeyVersion
/// properties:
/// cryptoKey: ${cryptokey.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CryptoKeyVersion can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, CryptoKeyVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/cryptoKeyVersion:CryptoKeyVersion default {{name}}
/// ```
class CryptoKeyVersion extends CustomResource {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  late final Output<String> algorithm;

  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only provided for key versions with protectionLevel HSM.
  /// Structure is documented below.
  late final Output<List<CryptoKeyVersionAttestation>> attestations;

  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  late final Output<String> cryptoKey;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  late final Output<CryptoKeyVersionExternalProtectionLevelOptions?>
      externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion key material was generated
  late final Output<String> generateTime;

  /// The resource name for this CryptoKeyVersion.
  late final Output<String> name;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  late final Output<String> protectionLevel;

  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  late final Output<String> state;

  CryptoKeyVersion(
    String name, {
    CryptoKeyVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKeyVersion:CryptoKeyVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.algorithm = Output.createUnknown<String>();
    this.attestations =
        Output.createUnknown<List<CryptoKeyVersionAttestation>>();
    this.cryptoKey = Output.createUnknown<String>();
    this.externalProtectionLevelOptions =
        Output.createUnknown<CryptoKeyVersionExternalProtectionLevelOptions?>();
    this.generateTime = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.protectionLevel = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
