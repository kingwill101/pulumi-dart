// ignore_for_file: unused_element, unnecessary_cast

import 'image.dart';

/// User signature.
class Signature {
  /// Optional. An image of the user's signature.
  final Image? image;

  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String>? metadata;

  /// Optional. Timestamp of the signature.
  final String? signatureTime;

  /// User's UUID provided by the client.
  final String userId;

  /// Creates a new [Signature].
  /// [image] Optional. An image of the user's signature.
  /// [metadata] Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  /// [signatureTime] Optional. Timestamp of the signature.
  /// [userId] User's UUID provided by the client.
  Signature({
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

  factory Signature.fromMap(Map<String, dynamic> map) {
    return Signature(
      image: map['image'] == null
          ? null
          : Image.fromMap((map['image'] as Map).cast<String, dynamic>()),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      signatureTime:
          map['signatureTime'] == null ? null : map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}
