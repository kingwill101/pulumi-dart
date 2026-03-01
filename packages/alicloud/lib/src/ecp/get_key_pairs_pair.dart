// ignore_for_file: unused_element, unnecessary_cast


class GetKeyPairsPair {
  /// The ID of the Key Pair. Its value is same as Queue Name.
  final String id;
  /// The Private Key of the Fingerprint.
  final String keyPairFingerPrint;
  /// The Key Name.
  final String keyPairName;

  /// Creates a new [GetKeyPairsPair].
  /// [id] The ID of the Key Pair. Its value is same as Queue Name.
  /// [keyPairFingerPrint] The Private Key of the Fingerprint.
  /// [keyPairName] The Key Name.
  GetKeyPairsPair({
    required this.id,
    required this.keyPairFingerPrint,
    required this.keyPairName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyPairFingerPrint': keyPairFingerPrint,
      'keyPairName': keyPairName,
    };
  }

  factory GetKeyPairsPair.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsPair(
      id: map['id'] as String,
      keyPairFingerPrint: map['keyPairFingerPrint'] as String,
      keyPairName: map['keyPairName'] as String,
    );
  }
}

