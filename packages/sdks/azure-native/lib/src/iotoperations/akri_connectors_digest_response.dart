// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsDigest properties.
class AkriConnectorsDigestResponse {
  /// The digest of the image.
  final String digest;
  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Digest'.
  final String tagDigestType;

  /// Creates a new [AkriConnectorsDigestResponse].
  /// [digest] The digest of the image.
  /// [tagDigestType] AkriConnectorsTagDigestType values.
  AkriConnectorsDigestResponse({
    required this.digest,
    required this.tagDigestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'tagDigestType': tagDigestType,
    };
  }

  factory AkriConnectorsDigestResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsDigestResponse(
      digest: map['digest'] as String,
      tagDigestType: map['tagDigestType'] as String,
    );
  }
}

