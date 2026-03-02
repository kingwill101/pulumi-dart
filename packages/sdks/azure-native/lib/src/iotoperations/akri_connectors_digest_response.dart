// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsDigest properties.
class AkriConnectorsDigestResponse {
  /// The digest of the image.
  final pulumi.Input<String> digest;
  /// AkriConnectorsTagDigestType values.
  /// Expected value is 'Digest'.
  final pulumi.Input<String> tagDigestType;

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
      digest: (map['digest'] as String).input(),
      tagDigestType: (map['tagDigestType'] as String).input(),
    );
  }
}

