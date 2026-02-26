// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFolderSettings.
class GetFolderSettingsResult {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  final bool disableDefaultSink;
  final String folder;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The resource name for the configured Cloud KMS key.
  /// KMS key name format:
  /// `'projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]'`
  /// To enable CMEK for the bucket, set this field to a valid kmsKeyName for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.
  /// The Cloud KMS key used by the bucket can be updated by changing the kmsKeyName to a new valid key name. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.
  /// See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final String kmsKeyName;

  /// The service account associated with a project for which CMEK will apply.
  /// Before enabling CMEK for a logging bucket, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account associated with the project for which CMEK will apply. See [Enabling CMEK for Logging Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage) for more information.
  final String kmsServiceAccountId;

  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  final String loggingServiceAccountId;

  /// The resource name of the settings.
  final String name;

  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  final String storageLocation;

  GetFolderSettingsResult({
    required this.disableDefaultSink,
    required this.folder,
    required this.id,
    required this.kmsKeyName,
    required this.kmsServiceAccountId,
    required this.loggingServiceAccountId,
    required this.name,
    required this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disableDefaultSink'] = disableDefaultSink;
    map['folder'] = folder;
    map['id'] = id;
    map['kmsKeyName'] = kmsKeyName;
    map['kmsServiceAccountId'] = kmsServiceAccountId;
    map['loggingServiceAccountId'] = loggingServiceAccountId;
    map['name'] = name;
    map['storageLocation'] = storageLocation;
    return map;
  }

  factory GetFolderSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetFolderSettingsResult(
      disableDefaultSink: map['disableDefaultSink'] as bool,
      folder: map['folder'] as String,
      id: map['id'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      kmsServiceAccountId: map['kmsServiceAccountId'] as String,
      loggingServiceAccountId: map['loggingServiceAccountId'] as String,
      name: map['name'] as String,
      storageLocation: map['storageLocation'] as String,
    );
  }
}
