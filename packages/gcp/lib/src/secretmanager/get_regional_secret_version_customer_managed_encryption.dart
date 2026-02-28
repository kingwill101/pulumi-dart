// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalSecretVersionCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final String kmsKeyVersionName;

  /// Creates a new [GetRegionalSecretVersionCustomerManagedEncryption].
  /// [kmsKeyVersionName] The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  GetRegionalSecretVersionCustomerManagedEncryption({
    required this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyVersionName'] = kmsKeyVersionName;
    return map;
  }

  factory GetRegionalSecretVersionCustomerManagedEncryption.fromMap(
      Map<String, dynamic> map) {
    return GetRegionalSecretVersionCustomerManagedEncryption(
      kmsKeyVersionName: map['kmsKeyVersionName'] as String,
    );
  }
}
