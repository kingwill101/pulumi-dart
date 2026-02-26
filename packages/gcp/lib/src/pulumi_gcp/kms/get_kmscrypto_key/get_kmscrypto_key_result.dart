// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_kmscrypto_key_key_access_justifications_policy/get_kmscrypto_key_key_access_justifications_policy.dart';
import '../get_kmscrypto_key_primary/get_kmscrypto_key_primary.dart';
import '../get_kmscrypto_key_version_template/get_kmscrypto_key_version_template.dart';

/// Result data returned by getKMSCryptoKey.
class GetKMSCryptoKeyResult {
  final String cryptoKeyBackend;
  final String destroyScheduledDuration;
  final Map<String, String> effectiveLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool importOnly;
  final List<GetKMSCryptoKeyKeyAccessJustificationsPolicy>
      keyAccessJustificationsPolicies;
  final String keyRing;
  final Map<String, String> labels;
  final String name;
  final List<GetKMSCryptoKeyPrimary> primaries;
  final Map<String, String> pulumiLabels;

  /// Defines the cryptographic capabilities of the key.
  final String purpose;

  /// Every time this period passes, generate a new CryptoKeyVersion and set it as
  /// the primary. The first rotation will take place after the specified period. The rotation period has the format
  /// of a decimal number with up to 9 fractional digits, followed by the letter s (seconds).
  final String rotationPeriod;
  final bool skipInitialVersionCreation;
  final List<GetKMSCryptoKeyVersionTemplate> versionTemplates;

  GetKMSCryptoKeyResult({
    required this.cryptoKeyBackend,
    required this.destroyScheduledDuration,
    required this.effectiveLabels,
    required this.id,
    required this.importOnly,
    required this.keyAccessJustificationsPolicies,
    required this.keyRing,
    required this.labels,
    required this.name,
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
    map['keyAccessJustificationsPolicies'] = Input.encodeList<
            GetKMSCryptoKeyKeyAccessJustificationsPolicy, Map<String, dynamic>>(
        keyAccessJustificationsPolicies, (value) => value.toMap());
    map['keyRing'] = keyRing;
    map['labels'] = labels;
    map['name'] = name;
    map['primaries'] =
        Input.encodeList<GetKMSCryptoKeyPrimary, Map<String, dynamic>>(
            primaries, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    map['purpose'] = purpose;
    map['rotationPeriod'] = rotationPeriod;
    map['skipInitialVersionCreation'] = skipInitialVersionCreation;
    map['versionTemplates'] =
        Input.encodeList<GetKMSCryptoKeyVersionTemplate, Map<String, dynamic>>(
            versionTemplates, (value) => value.toMap());
    return map;
  }

  factory GetKMSCryptoKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyResult(
      cryptoKeyBackend: map['cryptoKeyBackend'] as String,
      destroyScheduledDuration: map['destroyScheduledDuration'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      importOnly: map['importOnly'] as bool,
      keyAccessJustificationsPolicies:
          Input.decodeList<GetKMSCryptoKeyKeyAccessJustificationsPolicy>(
              map['keyAccessJustificationsPolicies'],
              (value) => GetKMSCryptoKeyKeyAccessJustificationsPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      keyRing: map['keyRing'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      primaries: Input.decodeList<GetKMSCryptoKeyPrimary>(
          map['primaries'],
          (value) => GetKMSCryptoKeyPrimary.fromMap(
              (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      purpose: map['purpose'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
      skipInitialVersionCreation: map['skipInitialVersionCreation'] as bool,
      versionTemplates: Input.decodeList<GetKMSCryptoKeyVersionTemplate>(
          map['versionTemplates'],
          (value) => GetKMSCryptoKeyVersionTemplate.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
