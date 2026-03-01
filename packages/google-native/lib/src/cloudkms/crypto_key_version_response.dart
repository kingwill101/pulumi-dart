// ignore_for_file: unused_element, unnecessary_cast

import 'external_protection_level_options_response.dart';
import 'key_operation_attestation_response.dart';

/// A CryptoKeyVersion represents an individual cryptographic key, and the associated key material. An ENABLED version can be used for cryptographic operations. For security reasons, the raw cryptographic key material represented by a CryptoKeyVersion can never be viewed or exported. It can only be used to encrypt, decrypt, or sign data when an authorized user or application invokes Cloud KMS.
class CryptoKeyVersionResponse {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final String algorithm;

  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
  final KeyOperationAttestationResponse attestation;

  /// The time at which this CryptoKeyVersion was created.
  final String createTime;

  /// The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.
  final String destroyEventTime;

  /// The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
  final String destroyTime;

  /// The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  final String externalDestructionFailureReason;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  final ExternalProtectionLevelOptionsResponse externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion's key material was generated.
  final String generateTime;

  /// The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED.
  final String generationFailureReason;

  /// The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
  final String importFailureReason;

  /// The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
  final String importJob;

  /// The time at which this CryptoKeyVersion's key material was most recently imported.
  final String importTime;

  /// The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  final String name;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  final String protectionLevel;

  /// Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  final bool reimportEligible;

  /// The current state of the CryptoKeyVersion.
  final String state;

  /// Creates a new [CryptoKeyVersionResponse].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [attestation] Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
  /// [createTime] The time at which this CryptoKeyVersion was created.
  /// [destroyEventTime] The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.
  /// [destroyTime] The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
  /// [externalDestructionFailureReason] The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [generateTime] The time this CryptoKeyVersion's key material was generated.
  /// [generationFailureReason] The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED.
  /// [importFailureReason] The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
  /// [importJob] The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
  /// [importTime] The time at which this CryptoKeyVersion's key material was most recently imported.
  /// [name] The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  /// [protectionLevel] The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  /// [reimportEligible] Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  /// [state] The current state of the CryptoKeyVersion.
  CryptoKeyVersionResponse({
    required this.algorithm,
    required this.attestation,
    required this.createTime,
    required this.destroyEventTime,
    required this.destroyTime,
    required this.externalDestructionFailureReason,
    required this.externalProtectionLevelOptions,
    required this.generateTime,
    required this.generationFailureReason,
    required this.importFailureReason,
    required this.importJob,
    required this.importTime,
    required this.name,
    required this.protectionLevel,
    required this.reimportEligible,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'attestation': attestation.toMap(),
      'createTime': createTime,
      'destroyEventTime': destroyEventTime,
      'destroyTime': destroyTime,
      'externalDestructionFailureReason': externalDestructionFailureReason,
      'externalProtectionLevelOptions': externalProtectionLevelOptions.toMap(),
      'generateTime': generateTime,
      'generationFailureReason': generationFailureReason,
      'importFailureReason': importFailureReason,
      'importJob': importJob,
      'importTime': importTime,
      'name': name,
      'protectionLevel': protectionLevel,
      'reimportEligible': reimportEligible,
      'state': state,
    };
  }

  factory CryptoKeyVersionResponse.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionResponse(
      algorithm: map['algorithm'] as String,
      attestation: KeyOperationAttestationResponse.fromMap(
        (map['attestation'] as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      destroyEventTime: map['destroyEventTime'] as String,
      destroyTime: map['destroyTime'] as String,
      externalDestructionFailureReason:
          map['externalDestructionFailureReason'] as String,
      externalProtectionLevelOptions:
          ExternalProtectionLevelOptionsResponse.fromMap(
            (map['externalProtectionLevelOptions'] as Map)
                .cast<String, dynamic>(),
          ),
      generateTime: map['generateTime'] as String,
      generationFailureReason: map['generationFailureReason'] as String,
      importFailureReason: map['importFailureReason'] as String,
      importJob: map['importJob'] as String,
      importTime: map['importTime'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      reimportEligible: map['reimportEligible'] as bool,
      state: map['state'] as String,
    );
  }
}
