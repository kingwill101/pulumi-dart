import 'package:pulumi/pulumi.dart' as pulumi;
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
///
/// ### Kms Crypto Key Asymmetric Sign
///
///
///
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
class CryptoKey extends pulumi.CustomResource {
  /// The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// The resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.
  late final pulumi.Output<String> cryptoKeyBackend;

  /// The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// If not specified at creation time, the default duration is 30 days.
  late final pulumi.Output<String> destroyScheduledDuration;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Whether this key may contain imported versions only.
  late final pulumi.Output<bool> importOnly;

  /// The policy used for Key Access Justifications Policy Enforcement. If this
  /// field is present and this key is enrolled in Key Access Justifications
  /// Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and
  /// sign operations, and the operation will fail if rejected by the policy. The
  /// policy is defined by specifying zero or more allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  /// This field is currently in beta and is subject to change.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyKeyAccessJustificationsPolicy>
      keyAccessJustificationsPolicy;

  /// The KeyRing that this key belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  late final pulumi.Output<String> keyRing;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name for the CryptoKey.
  late final pulumi.Output<String> name;

  /// A copy of the primary CryptoKeyVersion that will be used by cryptoKeys.encrypt when this CryptoKey is given in EncryptRequest.name.
  /// Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be unset.
  /// Structure is documented below.
  late final pulumi.Output<List<CryptoKeyPrimary>> primaries;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The immutable purpose of this CryptoKey. See the
  /// [purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
  /// for possible inputs.
  /// Default value is "ENCRYPT_DECRYPT".
  late final pulumi.Output<String?> purpose;

  /// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// The first rotation will take place after the specified period. The rotation period has
  /// the format of a decimal number with up to 9 fractional digits, followed by the
  /// letter `s` (seconds). It must be greater than a day (ie, 86400).
  late final pulumi.Output<String?> rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// You must use the `gcp.kms.CryptoKeyVersion` resource to create a new CryptoKeyVersion
  /// or `gcp.kms.KeyRingImportJob` resource to import the CryptoKeyVersion.
  /// This field is only applicable during initial CryptoKey creation.
  late final pulumi.Output<bool?> skipInitialVersionCreation;

  /// A template describing settings for new crypto key versions.
  /// Structure is documented below.
  late final pulumi.Output<CryptoKeyVersionTemplate> versionTemplate;

  CryptoKey(
    String name, {
    CryptoKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/cryptoKey:CryptoKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cryptoKeyBackend = registerOutput<String>('cryptoKeyBackend');
    this.destroyScheduledDuration =
        registerOutput<String>('destroyScheduledDuration');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.importOnly = registerOutput<bool>('importOnly');
    this.keyAccessJustificationsPolicy =
        registerOutput<CryptoKeyKeyAccessJustificationsPolicy>(
            'keyAccessJustificationsPolicy');
    this.keyRing = registerOutput<String>('keyRing');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.primaries = registerOutput<List<CryptoKeyPrimary>>('primaries');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.purpose = registerOutput<String?>('purpose');
    this.rotationPeriod = registerOutput<String?>('rotationPeriod');
    this.skipInitialVersionCreation =
        registerOutput<bool?>('skipInitialVersionCreation');
    this.versionTemplate =
        registerOutput<CryptoKeyVersionTemplate>('versionTemplate');
  }
}
