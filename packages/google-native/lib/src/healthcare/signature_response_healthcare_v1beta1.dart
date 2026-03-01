// ignore_for_file: unused_element, unnecessary_cast

import 'image_response_healthcare_v1beta1.dart';

/// User signature.
class SignatureResponseHealthcareV1beta1 {
  /// Optional. An image of the user's signature.
  final ImageResponseHealthcareV1beta1 image;

  /// Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  final Map<String, String> metadata;

  /// Optional. Timestamp of the signature.
  final String signatureTime;

  /// User's UUID provided by the client.
  final String userId;

  /// Creates a new [SignatureResponseHealthcareV1beta1].
  /// [image] Optional. An image of the user's signature.
  /// [metadata] Optional. Metadata associated with the user's signature. For example, the user's name or the user's title.
  /// [signatureTime] Optional. Timestamp of the signature.
  /// [userId] User's UUID provided by the client.
  SignatureResponseHealthcareV1beta1({
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

  factory SignatureResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SignatureResponseHealthcareV1beta1(
      image: ImageResponseHealthcareV1beta1.fromMap(
        (map['image'] as Map).cast<String, dynamic>(),
      ),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      signatureTime: map['signatureTime'] as String,
      userId: map['userId'] as String,
    );
  }
}
