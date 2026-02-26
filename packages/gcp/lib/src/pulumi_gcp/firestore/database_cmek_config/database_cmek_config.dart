// ignore_for_file: unused_element, unnecessary_cast

class DatabaseCmekConfig {
  /// (Output)
  /// Currently in-use KMS key versions (https://cloud.google.com/kms/docs/resource-hierarchy#key_versions).
  /// During key rotation (https://cloud.google.com/kms/docs/key-rotation), there can be
  /// multiple in-use key versions.
  /// The expected format is
  /// `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{key_version}`.
  final List<String>? activeKeyVersions;

  /// The resource ID of a Cloud KMS key. If set, the database created will
  /// be a Customer-managed Encryption Key (CMEK) database encrypted with
  /// this key. This feature is allowlist only in initial launch.
  /// Only keys in the same location as this database are allowed to be used
  /// for encryption. For Firestore's nam5 multi-region, this corresponds to Cloud KMS
  /// multi-region us. For Firestore's eur3 multi-region, this corresponds to
  /// Cloud KMS multi-region europe. See https://cloud.google.com/kms/docs/locations.
  /// This value should be the KMS key resource ID in the format of
  /// `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// How to retrieve this resource ID is listed at
  /// https://cloud.google.com/kms/docs/getting-resource-ids#getting_the_id_for_a_key_and_version.
  final String kmsKeyName;

  DatabaseCmekConfig({
    this.activeKeyVersions,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeKeyVersionsValue = activeKeyVersions;
    if (activeKeyVersionsValue != null) {
      map['activeKeyVersions'] = activeKeyVersionsValue;
    }
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory DatabaseCmekConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseCmekConfig(
      activeKeyVersions: map['activeKeyVersions'] == null
          ? null
          : (map['activeKeyVersions'] as List).cast<String>(),
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
