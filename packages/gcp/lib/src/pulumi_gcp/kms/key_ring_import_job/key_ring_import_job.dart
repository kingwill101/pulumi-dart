import 'package:pulumi/pulumi.dart';
import '../key_ring_import_job_attestation/key_ring_import_job_attestation.dart';
import '../key_ring_import_job_public_key/key_ring_import_job_public_key.dart';
import 'key_ring_import_job_args.dart';

/// A `KeyRingImportJob` can be used to create `CryptoKeys` and `CryptoKeyVersions` using pre-existing
/// key material, generated outside of Cloud KMS. A `KeyRingImportJob` expires 3 days after it is created.
/// Once expired, Cloud KMS will no longer be able to import or unwrap any key material that
/// was wrapped with the `KeyRingImportJob`'s public key.
///
///
/// > **Note:** KeyRingImportJobs cannot be deleted from Google Cloud Platform.
/// Destroying a provider-managed KeyRingImportJob will remove it from state but
/// *will not delete the resource from the project.*
///
///
/// To get more information about KeyRingImportJob, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.importJobs)
/// * How-to Guides
/// * [Importing a key](https://cloud.google.com/kms/docs/importing-a-key)
///
/// ## Example Usage
///
/// ## Import
///
/// KeyRingImportJob can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, KeyRingImportJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/keyRingImportJob:KeyRingImportJob default {{name}}
/// ```
class KeyRingImportJob extends CustomResource {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time.
  /// Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only present if the chosen ImportMethod is one with a protection level of HSM.
  /// Structure is documented below.
  late final Output<List<KeyRingImportJobAttestation>> attestations;

  /// The time at which this resource is scheduled for expiration and can no longer be used.
  /// This is in RFC3339 text format.
  late final Output<String> expireTime;

  /// It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  late final Output<String> importJobId;

  /// The wrapping method to be used for incoming key material.
  /// Possible values are: `RSA_OAEP_3072_SHA1_AES_256`, `RSA_OAEP_4096_SHA1_AES_256`, `RSA_OAEP_3072_SHA256_AES_256`, `RSA_OAEP_4096_SHA256_AES_256`, `RSA_OAEP_3072_SHA256`, `RSA_OAEP_4096_SHA256`.
  late final Output<String> importMethod;

  /// The KeyRing that this import job belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  late final Output<String> keyRing;

  /// The resource name for this ImportJob in the format projects/*/locations/*/keyRings/*/importJobs/*.
  late final Output<String> name;

  /// The protection level of the ImportJob. This must match the protectionLevel of the
  /// versionTemplate on the CryptoKey you attempt to import into.
  /// Possible values are: `SOFTWARE`, `HSM`, `EXTERNAL`.
  late final Output<String> protectionLevel;

  /// The public key with which to wrap key material prior to import. Only returned if state is `ACTIVE`.
  /// Structure is documented below.
  late final Output<List<KeyRingImportJobPublicKey>> publicKeys;

  /// The current state of the ImportJob, indicating if it can be used.
  late final Output<String> state;

  KeyRingImportJob(
    String name, {
    KeyRingImportJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyRingImportJob:KeyRingImportJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attestations =
        Output.createUnknown<List<KeyRingImportJobAttestation>>();
    this.expireTime = Output.createUnknown<String>();
    this.importJobId = Output.createUnknown<String>();
    this.importMethod = Output.createUnknown<String>();
    this.keyRing = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.protectionLevel = Output.createUnknown<String>();
    this.publicKeys = Output.createUnknown<List<KeyRingImportJobPublicKey>>();
    this.state = Output.createUnknown<String>();
  }
}
