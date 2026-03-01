// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsTag properties.
class AkriConnectorsTag {
  /// The tag of the image.
  final String tag;
  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Tag'.
  final String tagDigestType;

  /// Creates a new [AkriConnectorsTag].
  /// [tag] The tag of the image.
  /// [tagDigestType] AkriConnectorsTagDigestType values.
  AkriConnectorsTag({
    required this.tag,
    required this.tagDigestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'tagDigestType': tagDigestType,
    };
  }

  factory AkriConnectorsTag.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsTag(
      tag: map['tag'] as String,
      tagDigestType: map['tagDigestType'] as String,
    );
  }
}

