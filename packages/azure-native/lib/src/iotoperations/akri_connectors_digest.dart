// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsDigest properties.
class AkriConnectorsDigest {
  /// The digest of the image.
  final String digest;
  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Digest'.
  final String tagDigestType;

  /// Creates a new [AkriConnectorsDigest].
  /// [digest] The digest of the image.
  /// [tagDigestType] AkriConnectorsTagDigestType values.
  AkriConnectorsDigest({
    required this.digest,
    required this.tagDigestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'tagDigestType': tagDigestType,
    };
  }

  factory AkriConnectorsDigest.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsDigest(
      digest: map['digest'] as String,
      tagDigestType: map['tagDigestType'] as String,
    );
  }
}

