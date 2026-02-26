// ignore_for_file: unused_element, unnecessary_cast

import 'image2.dart';

/// User signature.
class Signature4 {
  /// Optional. An image of the user's signature.
  final Image2? image;

  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String>? metadata;

  /// Optional. Timestamp of the signature.
  final String? signatureTime;

  /// User's UUID provided by the client.
  final String userId;

  Signature4({
    this.image,
    this.metadata,
    this.signatureTime,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final signatureTimeValue = signatureTime;
    if (signatureTimeValue != null) {
      map['signatureTime'] = signatureTimeValue;
    }
    map['userId'] = userId;
    return map;
  }

  factory Signature4.fromMap(Map<String, dynamic> map) {
    return Signature4(
      image: map['image'] == null
          ? null
          : Image2.fromMap((map['image'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      signatureTime:
          map['signatureTime'] == null ? null : map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}
