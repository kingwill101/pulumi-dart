// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_key_access_justifications_policy.dart';
import 'crypto_key_version_template.dart';

/// {@template pulumi_kms_crypto_key_crypto_key_args_doc}
/// The set of arguments for CryptoKey.
/// {@endtemplate}
/// {@macro pulumi_kms_crypto_key_crypto_key_args_doc}
class CryptoKeyArgs {
  /// The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// The resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.
  final pulumi.Input<String>? cryptoKeyBackend;

  /// The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// If not specified at creation time, the default duration is 30 days.
  final pulumi.Input<String>? destroyScheduledDuration;

  /// Whether this key may contain imported versions only.
  final pulumi.Input<bool>? importOnly;

  /// The policy used for Key Access Justifications Policy Enforcement. If this
  /// field is present and this key is enrolled in Key Access Justifications
  /// Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and
  /// sign operations, and the operation will fail if rejected by the policy. The
  /// policy is defined by specifying zero or more allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  /// This field is currently in beta and is subject to change.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyKeyAccessJustificationsPolicy>?
  keyAccessJustificationsPolicy;

  /// The KeyRing that this key belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  final pulumi.Input<String> keyRing;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The resource name for the CryptoKey.
  final pulumi.Input<String>? name;

  /// The immutable purpose of this CryptoKey. See the
  /// [purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
  /// for possible inputs.
  /// Default value is "ENCRYPT_DECRYPT".
  final pulumi.Input<String>? purpose;

  /// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// The first rotation will take place after the specified period. The rotation period has
  /// the format of a decimal number with up to 9 fractional digits, followed by the
  /// letter `s` (seconds). It must be greater than a day (ie, 86400).
  final pulumi.Input<String>? rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// You must use the `gcp.kms.CryptoKeyVersion` resource to create a new CryptoKeyVersion
  /// or `gcp.kms.KeyRingImportJob` resource to import the CryptoKeyVersion.
  /// This field is only applicable during initial CryptoKey creation.
  final pulumi.Input<bool>? skipInitialVersionCreation;

  /// A template describing settings for new crypto key versions.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionTemplate>? versionTemplate;

  /// Creates a new [CryptoKeyArgs].
  /// [cryptoKeyBackend] The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// [destroyScheduledDuration] The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// [importOnly] Whether this key may contain imported versions only.
  /// [keyAccessJustificationsPolicy] The policy used for Key Access Justifications Policy Enforcement. If this
  /// [keyRing] The KeyRing that this key belongs to.
  /// [labels] Labels with user-defined metadata to apply to this resource.
  /// [name] The resource name for the CryptoKey.
  /// [purpose] The immutable purpose of this CryptoKey. See the
  /// [rotationPeriod] Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// [skipInitialVersionCreation] If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// [versionTemplate] A template describing settings for new crypto key versions.
  CryptoKeyArgs({
    String? cryptoKeyBackend,
    String? destroyScheduledDuration,
    bool? importOnly,
    CryptoKeyKeyAccessJustificationsPolicy? keyAccessJustificationsPolicy,
    required String keyRing,
    Map<String, String>? labels,
    String? name,
    String? purpose,
    String? rotationPeriod,
    bool? skipInitialVersionCreation,
    CryptoKeyVersionTemplate? versionTemplate,
  }) : cryptoKeyBackend = pulumi.Input.asOptionalInput<String>(
         cryptoKeyBackend,
       ),
       destroyScheduledDuration = pulumi.Input.asOptionalInput<String>(
         destroyScheduledDuration,
       ),
       importOnly = pulumi.Input.asOptionalInput<bool>(importOnly),
       keyAccessJustificationsPolicy =
           pulumi.Input.asOptionalInput<CryptoKeyKeyAccessJustificationsPolicy>(
             keyAccessJustificationsPolicy,
           ),
       keyRing = pulumi.Input.asInput<String>(keyRing),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       purpose = pulumi.Input.asOptionalInput<String>(purpose),
       rotationPeriod = pulumi.Input.asOptionalInput<String>(rotationPeriod),
       skipInitialVersionCreation = pulumi.Input.asOptionalInput<bool>(
         skipInitialVersionCreation,
       ),
       versionTemplate = pulumi.Input.asOptionalInput<CryptoKeyVersionTemplate>(
         versionTemplate,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyBackend': ?cryptoKeyBackend,
      'destroyScheduledDuration': ?destroyScheduledDuration,
      'importOnly': ?importOnly,
      'keyAccessJustificationsPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            CryptoKeyKeyAccessJustificationsPolicy,
            Map<String, dynamic>
          >(keyAccessJustificationsPolicy, (value) => value.toMap()),
      'keyRing': keyRing,
      'labels': ?labels,
      'name': ?name,
      'purpose': ?purpose,
      'rotationPeriod': ?rotationPeriod,
      'skipInitialVersionCreation': ?skipInitialVersionCreation,
      'versionTemplate':
          ?pulumi.Input.mapOptionalInputValue<
            CryptoKeyVersionTemplate,
            Map<String, dynamic>
          >(versionTemplate, (value) => value.toMap()),
    };
  }

  factory CryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyArgs(
      cryptoKeyBackend: map['cryptoKeyBackend'] == null
          ? null
          : map['cryptoKeyBackend'] as String,
      destroyScheduledDuration: map['destroyScheduledDuration'] == null
          ? null
          : map['destroyScheduledDuration'] as String,
      importOnly: map['importOnly'] == null ? null : map['importOnly'] as bool,
      keyAccessJustificationsPolicy:
          map['keyAccessJustificationsPolicy'] == null
          ? null
          : CryptoKeyKeyAccessJustificationsPolicy.fromMap(
              (map['keyAccessJustificationsPolicy'] as Map)
                  .cast<String, dynamic>(),
            ),
      keyRing: map['keyRing'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      purpose: map['purpose'] == null ? null : map['purpose'] as String,
      rotationPeriod: map['rotationPeriod'] == null
          ? null
          : map['rotationPeriod'] as String,
      skipInitialVersionCreation: map['skipInitialVersionCreation'] == null
          ? null
          : map['skipInitialVersionCreation'] as bool,
      versionTemplate: map['versionTemplate'] == null
          ? null
          : CryptoKeyVersionTemplate.fromMap(
              (map['versionTemplate'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
