// ignore_for_file: unused_element, unnecessary_cast

class GetTableEncryptionConfiguration {
  /// The self link or full name of a key which should be used to encrypt this table. Note that the default bigquery service account will need to have encrypt/decrypt permissions on this key - you may want to see the<span pulumi-lang-nodejs=" gcp.bigquery.getDefaultServiceAccount " pulumi-lang-dotnet=" gcp.bigquery.getDefaultServiceAccount " pulumi-lang-go=" bigquery.getDefaultServiceAccount " pulumi-lang-python=" bigquery_get_default_service_account " pulumi-lang-yaml=" gcp.bigquery.getDefaultServiceAccount " pulumi-lang-java=" gcp.bigquery.getDefaultServiceAccount "> gcp.bigquery.getDefaultServiceAccount </span>datasource and the<span pulumi-lang-nodejs=" gcp.kms.CryptoKeyIAMBinding " pulumi-lang-dotnet=" gcp.kms.CryptoKeyIAMBinding " pulumi-lang-go=" kms.CryptoKeyIAMBinding " pulumi-lang-python=" kms.CryptoKeyIAMBinding " pulumi-lang-yaml=" gcp.kms.CryptoKeyIAMBinding " pulumi-lang-java=" gcp.kms.CryptoKeyIAMBinding "> gcp.kms.CryptoKeyIAMBinding </span>resource.
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
