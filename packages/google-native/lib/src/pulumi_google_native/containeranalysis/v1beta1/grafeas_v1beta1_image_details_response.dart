// ignore_for_file: unused_element, unnecessary_cast

import 'derived_response2.dart';

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetailsResponse {
  /// Immutable. The child image derived from the base image.
  final DerivedResponse2 derivedImage;

  GrafeasV1beta1ImageDetailsResponse({
    required this.derivedImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['derivedImage'] = derivedImage.toMap();
    return map;
  }

  factory GrafeasV1beta1ImageDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1ImageDetailsResponse(
      derivedImage: DerivedResponse2.fromMap(
          (map['derivedImage'] as Map).cast<String, dynamic>()),
    );
  }
}
