// ignore_for_file: unused_element, unnecessary_cast

import 'image_response2.dart';

/// User signature.
class SignatureResponse4 {
  /// Optional. An image of the user's signature.
  final ImageResponse2 image;

  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String> metadata;

  /// Optional. Timestamp of the signature.
  final String signatureTime;

  /// User's UUID provided by the client.
  final String userId;

  SignatureResponse4({
    required this.image,
    required this.metadata,
    required this.signatureTime,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['image'] = image.toMap();
    map['metadata'] = metadata;
    map['signatureTime'] = signatureTime;
    map['userId'] = userId;
    return map;
  }

  factory SignatureResponse4.fromMap(Map<String, dynamic> map) {
    return SignatureResponse4(
      image:
          ImageResponse2.fromMap((map['image'] as Map).cast<String, dynamic>()),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      signatureTime: map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}
