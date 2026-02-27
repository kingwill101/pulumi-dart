import 'package:pulumi/pulumi.dart' as pulumi;
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
///
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
class CryptoKeyVersion extends pulumi.CustomResource {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  late final pulumi.Output<String> algorithm;

  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only provided for key versions with protectionLevel HSM.
  /// Structure is documented below.
  late final pulumi.Output<List<CryptoKeyVersionAttestation>> attestations;

  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  late final pulumi.Output<String> cryptoKey;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyVersionExternalProtectionLevelOptions?>
      externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion key material was generated
  late final pulumi.Output<String> generateTime;

  /// The resource name for this CryptoKeyVersion.
  late final pulumi.Output<String> name;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  late final pulumi.Output<String> protectionLevel;

  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  late final pulumi.Output<String> state;

  CryptoKeyVersion(
    String name, {
    CryptoKeyVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKeyVersion:CryptoKeyVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.algorithm = registerOutput<String>('algorithm');
    this.attestations =
        registerOutput<List<CryptoKeyVersionAttestation>>('attestations');
    this.cryptoKey = registerOutput<String>('cryptoKey');
    this.externalProtectionLevelOptions =
        registerOutput<CryptoKeyVersionExternalProtectionLevelOptions?>(
            'externalProtectionLevelOptions');
    this.generateTime = registerOutput<String>('generateTime');
    this.name = registerOutput<String>('name');
    this.protectionLevel = registerOutput<String>('protectionLevel');
    this.state = registerOutput<String>('state');
  }
}
