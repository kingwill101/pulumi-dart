// ignore_for_file: unused_element, unnecessary_cast

import 'derived2.dart';

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetails {
  /// Immutable. The child image derived from the base image.
  final Derived2 derivedImage;

  GrafeasV1beta1ImageDetails({
    required this.derivedImage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['derivedImage'] = derivedImage.toMap();
    return map;
  }

  factory GrafeasV1beta1ImageDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1ImageDetails(
      derivedImage: Derived2.fromMap(
          (map['derivedImage'] as Map).cast<String, dynamic>()),
    );
  }
}
