// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAutomatedBackupPolicyEncryptionConfig {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  final String kmsKeyName;

  /// Creates a new [GetClusterAutomatedBackupPolicyEncryptionConfig].
  /// [kmsKeyName] The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  GetClusterAutomatedBackupPolicyEncryptionConfig({required this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': kmsKeyName};
  }

  factory GetClusterAutomatedBackupPolicyEncryptionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAutomatedBackupPolicyEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
