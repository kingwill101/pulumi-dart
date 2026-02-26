// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutomatedBackupPolicyEncryptionConfig {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  final String kmsKeyName;

  GetClusterAutomatedBackupPolicyEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GetClusterAutomatedBackupPolicyEncryptionConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
