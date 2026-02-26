// ignore_for_file: unused_element, unnecessary_cast

class RegionalSecretVersionCustomerManagedEncryption {
  /// (Output)
  /// The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads.
  final String? kmsKeyVersionName;

  RegionalSecretVersionCustomerManagedEncryption({
    this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyVersionNameValue = kmsKeyVersionName;
    if (kmsKeyVersionNameValue != null) {
      map['kmsKeyVersionName'] = kmsKeyVersionNameValue;
    }
    return map;
  }

  factory RegionalSecretVersionCustomerManagedEncryption.fromMap(
      Map<String, dynamic> map) {
    return RegionalSecretVersionCustomerManagedEncryption(
      kmsKeyVersionName: map['kmsKeyVersionName'] == null
          ? null
          : map['kmsKeyVersionName'] as String,
    );
  }
}
