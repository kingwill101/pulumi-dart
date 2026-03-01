// ignore_for_file: unused_element, unnecessary_cast

import 'image_response.dart';

/// User signature.
class SignatureResponse {
  /// Optional. An image of the user's signature.
  final ImageResponse image;

  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String> metadata;

  /// Optional. Timestamp of the signature.
  final String signatureTime;

  /// User's UUID provided by the client.
  final String userId;

  /// Creates a new [SignatureResponse].
  /// [image] Optional. An image of the user's signature.
  /// [metadata] Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  /// [signatureTime] Optional. Timestamp of the signature.
  /// [userId] User's UUID provided by the client.
  SignatureResponse({
    required this.image,
    required this.metadata,
    required this.signatureTime,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image.toMap(),
      'metadata': metadata,
      'signatureTime': signatureTime,
      'userId': userId,
    };
  }

  factory SignatureResponse.fromMap(Map<String, dynamic> map) {
    return SignatureResponse(
      image: ImageResponse.fromMap(
        (map['image'] as Map).cast<String, dynamic>(),
      ),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      signatureTime: map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}
