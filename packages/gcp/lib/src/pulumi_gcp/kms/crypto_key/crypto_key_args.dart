// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../crypto_key_key_access_justifications_policy/crypto_key_key_access_justifications_policy.dart';
import '../crypto_key_version_template/crypto_key_version_template.dart';

/// The set of arguments for CryptoKey.
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

  CryptoKeyArgs({
    this.cryptoKeyBackend,
    this.destroyScheduledDuration,
    this.importOnly,
    this.keyAccessJustificationsPolicy,
    required this.keyRing,
    this.labels,
    this.name,
    this.purpose,
    this.rotationPeriod,
    this.skipInitialVersionCreation,
    this.versionTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyBackendValue = cryptoKeyBackend;
    if (cryptoKeyBackendValue != null) {
      map['cryptoKeyBackend'] = cryptoKeyBackendValue;
    }
    final destroyScheduledDurationValue = destroyScheduledDuration;
    if (destroyScheduledDurationValue != null) {
      map['destroyScheduledDuration'] = destroyScheduledDurationValue;
    }
    final importOnlyValue = importOnly;
    if (importOnlyValue != null) {
      map['importOnly'] = importOnlyValue;
    }
    final keyAccessJustificationsPolicyValue = keyAccessJustificationsPolicy;
    if (keyAccessJustificationsPolicyValue != null) {
      map['keyAccessJustificationsPolicy'] = pulumi.Input.mapOptionalInputValue<
              CryptoKeyKeyAccessJustificationsPolicy, Map<String, dynamic>>(
          keyAccessJustificationsPolicyValue, (value) => value.toMap());
    }
    map['keyRing'] = keyRing;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = purposeValue;
    }
    final rotationPeriodValue = rotationPeriod;
    if (rotationPeriodValue != null) {
      map['rotationPeriod'] = rotationPeriodValue;
    }
    final skipInitialVersionCreationValue = skipInitialVersionCreation;
    if (skipInitialVersionCreationValue != null) {
      map['skipInitialVersionCreation'] = skipInitialVersionCreationValue;
    }
    final versionTemplateValue = versionTemplate;
    if (versionTemplateValue != null) {
      map['versionTemplate'] = pulumi.Input.mapOptionalInputValue<
          CryptoKeyVersionTemplate,
          Map<String, dynamic>>(versionTemplateValue, (value) => value.toMap());
    }
    return map;
  }

  factory CryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyArgs(
      cryptoKeyBackend:
          pulumi.Input.asOptionalInput<String>(map['cryptoKeyBackend']),
      destroyScheduledDuration:
          pulumi.Input.asOptionalInput<String>(map['destroyScheduledDuration']),
      importOnly: pulumi.Input.asOptionalInput<bool>(map['importOnly']),
      keyAccessJustificationsPolicy:
          pulumi.Input.asOptionalInput<CryptoKeyKeyAccessJustificationsPolicy>(
              map['keyAccessJustificationsPolicy']),
      keyRing: pulumi.Input.asInput<String>(map['keyRing']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      purpose: pulumi.Input.asOptionalInput<String>(map['purpose']),
      rotationPeriod:
          pulumi.Input.asOptionalInput<String>(map['rotationPeriod']),
      skipInitialVersionCreation:
          pulumi.Input.asOptionalInput<bool>(map['skipInitialVersionCreation']),
      versionTemplate: pulumi.Input.asOptionalInput<CryptoKeyVersionTemplate>(
          map['versionTemplate']),
    );
  }
}
