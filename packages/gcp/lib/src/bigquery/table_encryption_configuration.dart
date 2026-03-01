// ignore_for_file: unused_element, unnecessary_cast


class TableEncryptionConfiguration {
  /// The self link or full name of a key which should be used to
  /// encrypt this table.  Note that the default bigquery service account will need to have
  /// encrypt/decrypt permissions on this key - you may want to see the
  /// `gcp.bigquery.getDefaultServiceAccount` datasource and the
  /// `gcp.kms.CryptoKeyIAMBinding` resource.
  final String kmsKeyName;
  /// The self link or full name of the kms key version used to encrypt this table.
  final String? kmsKeyVersion;

  /// Creates a new [TableEncryptionConfiguration].
  /// [kmsKeyName] The self link or full name of a key which should be used to
  /// [kmsKeyVersion] The self link or full name of the kms key version used to encrypt this table.
  TableEncryptionConfiguration({
    required this.kmsKeyName,
    this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyVersion': ?kmsKeyVersion,
    };
  }

  factory TableEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return TableEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] == null ? null : map['kmsKeyVersion'] as String,
    );
  }
}

