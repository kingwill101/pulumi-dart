// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsDigest properties.
class AkriConnectorsDigest {
  /// The digest of the image.
  final pulumi.Input<String> digest;

  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Digest'.
  final pulumi.Input<String> tagDigestType;

  /// Creates a new [AkriConnectorsDigest].
  /// [digest] The digest of the image.
  /// [tagDigestType] AkriConnectorsTagDigestType values.
  AkriConnectorsDigest({required this.digest, required this.tagDigestType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'digest': digest, 'tagDigestType': tagDigestType};
  }

  factory AkriConnectorsDigest.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsDigest(
      digest: pulumi.Input.fromValue(map['digest'] as String),
      tagDigestType: pulumi.Input.fromValue(map['tagDigestType'] as String),
    );
  }
}
