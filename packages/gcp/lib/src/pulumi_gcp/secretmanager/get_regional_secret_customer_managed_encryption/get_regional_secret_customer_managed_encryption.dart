// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalSecretCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final String kmsKeyName;

  GetRegionalSecretCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory GetRegionalSecretCustomerManagedEncryption.fromMap(
      Map<String, dynamic> map) {
    return GetRegionalSecretCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
