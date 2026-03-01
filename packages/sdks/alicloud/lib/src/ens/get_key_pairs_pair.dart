// ignore_for_file: unused_element, unnecessary_cast


class GetKeyPairsPair {
  /// The creation time of the key pair. The date format is in accordance with ISO8601 notation and uses UTC time. The format is yyyy-MM-ddTHH:mm:ssZ.
  final String createTime;
  /// The ID of the Key Pair.
  final String id;
  /// Fingerprint of the key pair.
  final String keyPairFingerPrint;
  /// The name of the key pair.
  final String keyPairName;
  /// The version number.
  final String version;

  /// Creates a new [GetKeyPairsPair].
  /// [createTime] The creation time of the key pair. The date format is in accordance with ISO8601 notation and uses UTC time. The format is yyyy-MM-ddTHH:mm:ssZ.
  /// [id] The ID of the Key Pair.
  /// [keyPairFingerPrint] Fingerprint of the key pair.
  /// [keyPairName] The name of the key pair.
  /// [version] The version number.
  GetKeyPairsPair({
    required this.createTime,
    required this.id,
    required this.keyPairFingerPrint,
    required this.keyPairName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'keyPairFingerPrint': keyPairFingerPrint,
      'keyPairName': keyPairName,
      'version': version,
    };
  }

  factory GetKeyPairsPair.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsPair(
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      keyPairFingerPrint: map['keyPairFingerPrint'] as String,
      keyPairName: map['keyPairName'] as String,
      version: map['version'] as String,
    );
  }
}

