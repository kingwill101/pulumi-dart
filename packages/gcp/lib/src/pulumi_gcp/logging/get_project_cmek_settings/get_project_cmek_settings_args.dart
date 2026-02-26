// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProjectCmekSettings.
class GetProjectCmekSettingsArgs {
  /// The resource name for the configured Cloud KMS key.
  /// KMS key name format:
  /// `'projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]'`
  /// To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
  /// The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
  /// See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final Input<String>? kmsKeyName;

  /// The ID of the project.
  final Input<String> project;

  GetProjectCmekSettingsArgs({
    this.kmsKeyName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    map['project'] = project;
    return map;
  }

  factory GetProjectCmekSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCmekSettingsArgs(
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
