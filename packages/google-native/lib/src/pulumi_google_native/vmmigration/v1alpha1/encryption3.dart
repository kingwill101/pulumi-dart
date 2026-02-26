// ignore_for_file: unused_element, unnecessary_cast

/// Encryption message describes the details of the applied encryption.
class Encryption3 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String kmsKey;

  Encryption3({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory Encryption3.fromMap(Map<String, dynamic> map) {
    return Encryption3(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
