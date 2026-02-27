// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_crypto_keys_key_key_access_justifications_policy/get_crypto_keys_key_key_access_justifications_policy.dart';
import '../get_crypto_keys_key_primary/get_crypto_keys_key_primary.dart';
import '../get_crypto_keys_key_version_template/get_crypto_keys_key_version_template.dart';

class GetCryptoKeysKey {
  /// The resource name of the backend environment associated with all CryptoKeyVersions within this CryptoKey.
  /// The resource name is in the format "projects/*/locations/*/ekmConnections/*" and only applies to "EXTERNAL_VPC" keys.
  final String cryptoKeyBackend;

  /// The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED.
  /// If not specified at creation time, the default duration is 30 days.
  final String destroyScheduledDuration;
  final Map<String, String> effectiveLabels;
  final String id;

  /// Whether this key may contain imported versions only.
  final bool importOnly;

  /// The policy used for Key Access Justifications Policy Enforcement. If this
  /// field is present and this key is enrolled in Key Access Justifications
  /// Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and
  /// sign operations, and the operation will fail if rejected by the policy. The
  /// policy is defined by specifying zero or more allowed justification codes.
  /// https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes
  /// By default, this field is absent, and all justification codes are allowed.
  /// This field is currently in beta and is subject to change.
  final List<GetCryptoKeysKeyKeyAccessJustificationsPolicy>
      keyAccessJustificationsPolicies;

  /// The key ring that the keys belongs to. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'.,
  final String? keyRing;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Map<String, String> labels;

  /// The resource name for the CryptoKey.
  final String? name;

  /// A copy of the primary CryptoKeyVersion that will be used by cryptoKeys.encrypt when this CryptoKey is given in EncryptRequest.name.
  /// Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be unset.
  final List<GetCryptoKeysKeyPrimary> primaries;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// The immutable purpose of this CryptoKey. See the
  /// [purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
  /// for possible inputs.
  /// Default value is "ENCRYPT_DECRYPT".
  final String purpose;

  /// Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.
  /// The first rotation will take place after the specified period. The rotation period has
  /// the format of a decimal number with up to 9 fractional digits, followed by the
  /// letter 's' (seconds). It must be greater than a day (ie, 86400).
  final String rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions.
  /// You must use the 'google_kms_crypto_key_version' resource to create a new CryptoKeyVersion
  /// or 'google_kms_key_ring_import_job' resource to import the CryptoKeyVersion.
  /// This field is only applicable during initial CryptoKey creation.
  final bool skipInitialVersionCreation;

  /// A template describing settings for new crypto key versions.
  final List<GetCryptoKeysKeyVersionTemplate> versionTemplates;

  GetCryptoKeysKey({
    required this.cryptoKeyBackend,
    required this.destroyScheduledDuration,
    required this.effectiveLabels,
    required this.id,
    required this.importOnly,
    required this.keyAccessJustificationsPolicies,
    this.keyRing,
    required this.labels,
    this.name,
    required this.primaries,
    required this.pulumiLabels,
    required this.purpose,
    required this.rotationPeriod,
    required this.skipInitialVersionCreation,
    required this.versionTemplates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyBackend'] = cryptoKeyBackend;
    map['destroyScheduledDuration'] = destroyScheduledDuration;
    map['effectiveLabels'] = effectiveLabels;
    map['id'] = id;
    map['importOnly'] = importOnly;
    map['keyAccessJustificationsPolicies'] = pulumi.Input.encodeList<
            GetCryptoKeysKeyKeyAccessJustificationsPolicy,
            Map<String, dynamic>>(
        keyAccessJustificationsPolicies, (value) => value.toMap());
    final keyRingValue = keyRing;
    if (keyRingValue != null) {
      map['keyRing'] = keyRingValue;
    }
    map['labels'] = labels;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['primaries'] =
        pulumi.Input.encodeList<GetCryptoKeysKeyPrimary, Map<String, dynamic>>(
            primaries, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    map['purpose'] = purpose;
    map['rotationPeriod'] = rotationPeriod;
    map['skipInitialVersionCreation'] = skipInitialVersionCreation;
    map['versionTemplates'] = pulumi.Input.encodeList<
        GetCryptoKeysKeyVersionTemplate,
        Map<String, dynamic>>(versionTemplates, (value) => value.toMap());
    return map;
  }

  factory GetCryptoKeysKey.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeysKey(
      cryptoKeyBackend: map['cryptoKeyBackend'] as String,
      destroyScheduledDuration: map['destroyScheduledDuration'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      importOnly: map['importOnly'] as bool,
      keyAccessJustificationsPolicies: pulumi.Input.decodeList<
              GetCryptoKeysKeyKeyAccessJustificationsPolicy>(
          map['keyAccessJustificationsPolicies'],
          (value) => GetCryptoKeysKeyKeyAccessJustificationsPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      keyRing: map['keyRing'] == null ? null : map['keyRing'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      primaries: pulumi.Input.decodeList<GetCryptoKeysKeyPrimary>(
          map['primaries'],
          (value) => GetCryptoKeysKeyPrimary.fromMap(
              (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      purpose: map['purpose'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
      skipInitialVersionCreation: map['skipInitialVersionCreation'] as bool,
      versionTemplates:
          pulumi.Input.decodeList<GetCryptoKeysKeyVersionTemplate>(
              map['versionTemplates'],
              (value) => GetCryptoKeysKeyVersionTemplate.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
