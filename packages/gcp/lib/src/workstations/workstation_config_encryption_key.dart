// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigEncryptionKey {
  /// The name of the Google Cloud KMS encryption key.
  final String kmsKey;

  /// The service account to use with the specified KMS key.
  final String kmsKeyServiceAccount;

  /// Creates a new [WorkstationConfigEncryptionKey].
  /// [kmsKey] The name of the Google Cloud KMS encryption key.
  /// [kmsKeyServiceAccount] The service account to use with the specified KMS key.
  WorkstationConfigEncryptionKey({
    required this.kmsKey,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    map['kmsKeyServiceAccount'] = kmsKeyServiceAccount;
    return map;
  }

  factory WorkstationConfigEncryptionKey.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigEncryptionKey(
      kmsKey: map['kmsKey'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] as String,
    );
  }
}
