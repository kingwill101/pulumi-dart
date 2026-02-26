// ignore_for_file: unused_element, unnecessary_cast

import 'image_response.dart';

/// User signature.
class SignatureResponse3 {
  /// Optional. An image of the user's signature.
  final ImageResponse image;

  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String> metadata;

  /// Optional. Timestamp of the signature.
  final String signatureTime;

  /// User's UUID provided by the client.
  final String userId;

  SignatureResponse3({
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

  factory SignatureResponse3.fromMap(Map<String, dynamic> map) {
    return SignatureResponse3(
      image:
          ImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      signatureTime: map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}
