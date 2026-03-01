// ignore_for_file: unused_element, unnecessary_cast

class RegionalSecretVersionCustomerManagedEncryption {
  /// (Output)
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final String? kmsKeyVersionName;

  /// Creates a new [RegionalSecretVersionCustomerManagedEncryption].
  /// [kmsKeyVersionName] (Output)
  RegionalSecretVersionCustomerManagedEncryption({this.kmsKeyVersionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyVersionName': ?kmsKeyVersionName};
  }

  factory RegionalSecretVersionCustomerManagedEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionalSecretVersionCustomerManagedEncryption(
      kmsKeyVersionName: map['kmsKeyVersionName'] == null
          ? null
          : map['kmsKeyVersionName'] as String,
    );
  }
}
