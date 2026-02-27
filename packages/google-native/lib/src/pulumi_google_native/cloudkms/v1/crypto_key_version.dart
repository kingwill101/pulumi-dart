import 'package:pulumi/pulumi.dart' hide Config;
import 'crypto_key_version_args.dart';
import 'external_protection_level_options_response.dart';
import 'key_operation_attestation_response.dart';

/// Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CryptoKeyVersion extends CustomResource {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  late final Output<String> algorithm;

  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
  late final Output<KeyOperationAttestationResponse> attestation;

  /// The time at which this CryptoKeyVersion was created.
  late final Output<String> createTime;
  late final Output<String> cryptoKeyId;

  /// The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.
  late final Output<String> destroyEventTime;

  /// The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
  late final Output<String> destroyTime;

  /// The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  late final Output<String> externalDestructionFailureReason;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  late final Output<ExternalProtectionLevelOptionsResponse>
      externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion's key material was generated.
  late final Output<String> generateTime;

  /// The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED.
  late final Output<String> generationFailureReason;

  /// The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
  late final Output<String> importFailureReason;

  /// The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
  late final Output<String> importJob;

  /// The time at which this CryptoKeyVersion's key material was most recently imported.
  late final Output<String> importTime;
  late final Output<String> keyRingId;
  late final Output<String> location;

  /// The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  late final Output<String> protectionLevel;

  /// Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  late final Output<bool> reimportEligible;

  /// The current state of the CryptoKeyVersion.
  late final Output<String> state;

  CryptoKeyVersion(
    String name, {
    CryptoKeyVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:CryptoKeyVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.algorithm = registerOutput<String>('algorithm');
    this.attestation =
        registerOutput<KeyOperationAttestationResponse>('attestation');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyId = registerOutput<String>('cryptoKeyId');
    this.destroyEventTime = registerOutput<String>('destroyEventTime');
    this.destroyTime = registerOutput<String>('destroyTime');
    this.externalDestructionFailureReason =
        registerOutput<String>('externalDestructionFailureReason');
    this.externalProtectionLevelOptions =
        registerOutput<ExternalProtectionLevelOptionsResponse>(
            'externalProtectionLevelOptions');
    this.generateTime = registerOutput<String>('generateTime');
    this.generationFailureReason =
        registerOutput<String>('generationFailureReason');
    this.importFailureReason = registerOutput<String>('importFailureReason');
    this.importJob = registerOutput<String>('importJob');
    this.importTime = registerOutput<String>('importTime');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.protectionLevel = registerOutput<String>('protectionLevel');
    this.reimportEligible = registerOutput<bool>('reimportEligible');
    this.state = registerOutput<String>('state');
  }
}
