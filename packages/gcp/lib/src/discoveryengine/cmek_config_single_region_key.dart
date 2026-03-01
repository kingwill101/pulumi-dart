// ignore_for_file: unused_element, unnecessary_cast


class CmekConfigSingleRegionKey {
  /// Single-regional kms key resource name which will be used to encrypt
  /// resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  final String kmsKey;

  /// Creates a new [CmekConfigSingleRegionKey].
  /// [kmsKey] Single-regional kms key resource name which will be used to encrypt
  CmekConfigSingleRegionKey({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory CmekConfigSingleRegionKey.fromMap(Map<String, dynamic> map) {
    return CmekConfigSingleRegionKey(
      kmsKey: map['kmsKey'] as String,
    );
  }
}

