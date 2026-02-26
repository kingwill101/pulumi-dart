import 'package:pulumi/pulumi.dart';
import 'import_job_args.dart';
import 'key_operation_attestation_response.dart';
import 'wrapping_public_key_response.dart';

/// Create a new ImportJob within a KeyRing. ImportJob.import_method is required.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ImportJob extends CustomResource {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.
  late final Output<KeyOperationAttestationResponse> attestation;

  /// The time at which this ImportJob was created.
  late final Output<String> createTime;

  /// The time this ImportJob expired. Only present if state is EXPIRED.
  late final Output<String> expireEventTime;

  /// The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.
  late final Output<String> expireTime;

  /// The time this ImportJob's key material was generated.
  late final Output<String> generateTime;

  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final Output<String> importJobId;

  /// Immutable. The wrapping method to be used for incoming key material.
  late final Output<String> importMethod;
  late final Output<String> keyRingId;
  late final Output<String> location;

  /// The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  late final Output<String> protectionLevel;

  /// The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.
  late final Output<WrappingPublicKeyResponse> publicKey;

  /// The current state of the ImportJob, indicating if it can be used.
  late final Output<String> state;

  ImportJob(
    String name, {
    ImportJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:ImportJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestation =
        registerOutput<KeyOperationAttestationResponse>('attestation');
    this.createTime = registerOutput<String>('createTime');
    this.expireEventTime = registerOutput<String>('expireEventTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.generateTime = registerOutput<String>('generateTime');
    this.importJobId = registerOutput<String>('importJobId');
    this.importMethod = registerOutput<String>('importMethod');
    this.keyRingId = registerOutput<String>('keyRingId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.protectionLevel = registerOutput<String>('protectionLevel');
    this.publicKey = registerOutput<WrappingPublicKeyResponse>('publicKey');
    this.state = registerOutput<String>('state');
  }
}
