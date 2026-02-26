// ignore_for_file: unused_element, unnecessary_cast

class RegionalSecretCustomerManagedEncryption {
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final String kmsKeyName;

  RegionalSecretCustomerManagedEncryption({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory RegionalSecretCustomerManagedEncryption.fromMap(
      Map<String, dynamic> map) {
    return RegionalSecretCustomerManagedEncryption(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
