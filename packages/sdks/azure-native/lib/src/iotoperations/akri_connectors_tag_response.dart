// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsTag properties.
class AkriConnectorsTagResponse {
  /// The tag of the image.
  final pulumi.Input<String> tag;
  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Tag'.
  final pulumi.Input<String> tagDigestType;

  /// Creates a new [AkriConnectorsTagResponse].
  /// [tag] The tag of the image.
  /// [tagDigestType] AkriConnectorsTagDigestType values.
  AkriConnectorsTagResponse({
    required this.tag,
    required this.tagDigestType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'tagDigestType': tagDigestType,
    };
  }

  factory AkriConnectorsTagResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsTagResponse(
      tag: pulumi.Input.fromValue(map['tag'] as String),
      tagDigestType: pulumi.Input.fromValue(map['tagDigestType'] as String),
    );
  }
}

