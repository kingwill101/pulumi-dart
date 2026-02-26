// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyRingImportJob.
class KeyRingImportJobArgs {
  /// It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  final Input<String> importJobId;

  /// The wrapping method to be used for incoming key material.
  /// Possible values are: `RSA_OAEP_3072_SHA1_AES_256`, `RSA_OAEP_4096_SHA1_AES_256`, `RSA_OAEP_3072_SHA256_AES_256`, `RSA_OAEP_4096_SHA256_AES_256`, `RSA_OAEP_3072_SHA256`, `RSA_OAEP_4096_SHA256`.
  final Input<String> importMethod;

  /// The KeyRing that this import job belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  final Input<String> keyRing;

  /// The protection level of the ImportJob. This must match the protectionLevel of the
  /// versionTemplate on the CryptoKey you attempt to import into.
  /// Possible values are: `SOFTWARE`, `HSM`, `EXTERNAL`.
  final Input<String> protectionLevel;

  KeyRingImportJobArgs({
    required this.importJobId,
    required this.importMethod,
    required this.keyRing,
    required this.protectionLevel,
  });

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
      importJobId: Input.asInput<String>(map['importJobId']),
      importMethod: Input.asInput<String>(map['importMethod']),
      keyRing: Input.asInput<String>(map['keyRing']),
      protectionLevel: Input.asInput<String>(map['protectionLevel']),
    );
  }
}
