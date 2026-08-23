// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsTag properties.
class AkriConnectorsTag {
  /// The tag of the image.
  final pulumi.Input<String> tag;
  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Tag'.
  final pulumi.Input<String> tagDigestType;

  /// Creates a new [AkriConnectorsTag].
  /// [tag] The tag of the image.
  /// [tagDigestType] AkriConnectorsTagDigestType values.
  const AkriConnectorsTag({
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
      tag: pulumi.Input.fromValue(map['tag'] as String),
      tagDigestType: pulumi.Input.fromValue(map['tagDigestType'] as String),
    );
  }
}
