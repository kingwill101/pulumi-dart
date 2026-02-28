// ignore_for_file: unused_element, unnecessary_cast

import 'derived_response_containeranalysis_v1beta1.dart';

/// Details of an image occurrence.
class GrafeasV1beta1ImageDetailsResponse {
  /// Immutable. The child image derived from the base image.
  final DerivedResponseContaineranalysisV1beta1 derivedImage;

  /// Creates a new [GrafeasV1beta1ImageDetailsResponse].
  /// [derivedImage] Immutable. The child image derived from the base image.
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
      derivedImage: DerivedResponseContaineranalysisV1beta1.fromMap(
          (map['derivedImage'] as Map).cast<String, dynamic>()),
    );
  }
}
