// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class Encryption {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  /// Creates a new [Encryption].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  Encryption({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
