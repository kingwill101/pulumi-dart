// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutomatedBackupPolicyEncryptionConfig {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  final String? kmsKeyName;

  /// Creates a new [ClusterAutomatedBackupPolicyEncryptionConfig].
  /// [kmsKeyName] The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  ClusterAutomatedBackupPolicyEncryptionConfig({this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName};
  }

  factory ClusterAutomatedBackupPolicyEncryptionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAutomatedBackupPolicyEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
    );
  }
}
