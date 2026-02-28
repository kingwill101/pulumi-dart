// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_ring_import_job_key_ring_import_job_args_doc}
/// The set of arguments for KeyRingImportJob.
/// {@endtemplate}
/// {@macro pulumi_kms_key_ring_import_job_key_ring_import_job_args_doc}
class KeyRingImportJobArgs {
  /// It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  final pulumi.Input<String> importJobId;

  /// The wrapping method to be used for incoming key material.
  /// Possible values are: `RSA_OAEP_3072_SHA1_AES_256`, `RSA_OAEP_4096_SHA1_AES_256`, `RSA_OAEP_3072_SHA256_AES_256`, `RSA_OAEP_4096_SHA256_AES_256`, `RSA_OAEP_3072_SHA256`, `RSA_OAEP_4096_SHA256`.
  final pulumi.Input<String> importMethod;

  /// The KeyRing that this import job belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  final pulumi.Input<String> keyRing;

  /// The protection level of the ImportJob. This must match the protectionLevel of the
  /// versionTemplate on the CryptoKey you attempt to import into.
  /// Possible values are: `SOFTWARE`, `HSM`, `EXTERNAL`.
  final pulumi.Input<String> protectionLevel;

  /// Creates a new [KeyRingImportJobArgs].
  /// [importJobId] It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  /// [importMethod] The wrapping method to be used for incoming key material.
  /// [keyRing] The KeyRing that this import job belongs to.
  /// [protectionLevel] The protection level of the ImportJob. This must match the protectionLevel of the
  KeyRingImportJobArgs({
    required String importJobId,
    required String importMethod,
    required String keyRing,
    required String protectionLevel,
  })  : importJobId = pulumi.Input.asInput<String>(importJobId),
        importMethod = pulumi.Input.asInput<String>(importMethod),
        keyRing = pulumi.Input.asInput<String>(keyRing),
        protectionLevel = pulumi.Input.asInput<String>(protectionLevel);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importJobId'] = importJobId;
    map['importMethod'] = importMethod;
    map['keyRing'] = keyRing;
    map['protectionLevel'] = protectionLevel;
    return map;
  }

  factory KeyRingImportJobArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingImportJobArgs(
      importJobId: map['importJobId'] as String,
      importMethod: map['importMethod'] as String,
      keyRing: map['keyRing'] as String,
      protectionLevel: map['protectionLevel'] as String,
    );
  }
}
