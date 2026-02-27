// ignore_for_file: unused_element, unnecessary_cast

class GetTableEncryptionConfiguration {
  /// The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the gcp.bigquery.getDefaultServiceAccount datasource and the gcp.kms.CryptoKeyIAMBinding resource.
  final String kmsKeyName;

  /// The self link or full name of the kms key version used to encrypt this table.
  final String kmsKeyVersion;

  GetTableEncryptionConfiguration({
    required this.kmsKeyName,
    required this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    map['kmsKeyVersion'] = kmsKeyVersion;
    return map;
  }

  factory GetTableEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTableEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] as String,
    );
  }
}
