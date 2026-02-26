// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'crypto_key_purpose.dart';
import 'crypto_key_version_template.dart';

/// The set of arguments for CryptoKey.
class CryptoKeyArgs {
  /// Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  final Input<String>? cryptoKeyBackend;

  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final Input<String>? cryptoKeyId;

  /// Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.
  final Input<String>? destroyScheduledDuration;

  /// Immutable. Whether this key may contain imported versions only.
  final Input<bool>? importOnly;
  final Input<String> keyRingId;

  /// Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  final Input<String>? nextRotationTime;
  final Input<String>? project;

  /// Immutable. The immutable purpose of this CryptoKey.
  final Input<CryptoKeyPurpose>? purpose;

  /// next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  final Input<String>? rotationPeriod;

  /// If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.
  final Input<bool>? skipInitialVersionCreation;

  /// A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  final Input<CryptoKeyVersionTemplate>? versionTemplate;

  CryptoKeyArgs({
    this.cryptoKeyBackend,
    this.cryptoKeyId,
    this.destroyScheduledDuration,
    this.importOnly,
    required this.keyRingId,
    this.labels,
    this.location,
    this.nextRotationTime,
    this.project,
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
    final cryptoKeyIdValue = cryptoKeyId;
    if (cryptoKeyIdValue != null) {
      map['cryptoKeyId'] = cryptoKeyIdValue;
    }
    final destroyScheduledDurationValue = destroyScheduledDuration;
    if (destroyScheduledDurationValue != null) {
      map['destroyScheduledDuration'] = destroyScheduledDurationValue;
    }
    final importOnlyValue = importOnly;
    if (importOnlyValue != null) {
      map['importOnly'] = importOnlyValue;
    }
    map['keyRingId'] = keyRingId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nextRotationTimeValue = nextRotationTime;
    if (nextRotationTimeValue != null) {
      map['nextRotationTime'] = nextRotationTimeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final purposeValue = purpose;
    if (purposeValue != null) {
      map['purpose'] = Input.mapOptionalInputValue<CryptoKeyPurpose, String>(
          purposeValue, (value) => value.value);
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
      map['versionTemplate'] = Input.mapOptionalInputValue<
          CryptoKeyVersionTemplate,
          Map<String, dynamic>>(versionTemplateValue, (value) => value.toMap());
    }
    return map;
  }

  factory CryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyArgs(
      cryptoKeyBackend: Input.asOptionalInput<String>(map['cryptoKeyBackend']),
      cryptoKeyId: Input.asOptionalInput<String>(map['cryptoKeyId']),
      destroyScheduledDuration:
          Input.asOptionalInput<String>(map['destroyScheduledDuration']),
      importOnly: Input.asOptionalInput<bool>(map['importOnly']),
      keyRingId: Input.asInput<String>(map['keyRingId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      nextRotationTime: Input.asOptionalInput<String>(map['nextRotationTime']),
      project: Input.asOptionalInput<String>(map['project']),
      purpose: Input.asOptionalInput<CryptoKeyPurpose>(map['purpose']),
      rotationPeriod: Input.asOptionalInput<String>(map['rotationPeriod']),
      skipInitialVersionCreation:
          Input.asOptionalInput<bool>(map['skipInitialVersionCreation']),
      versionTemplate: Input.asOptionalInput<CryptoKeyVersionTemplate>(
          map['versionTemplate']),
    );
  }
}
