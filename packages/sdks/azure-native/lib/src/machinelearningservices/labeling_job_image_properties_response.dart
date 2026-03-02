// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a labeling job for image data
class LabelingJobImagePropertiesResponse {
  /// Annotation type of image labeling job.
  final pulumi.Input<String>? annotationType;
  /// Media type of data asset.
  /// Expected value is 'Image'.
  final pulumi.Input<String> mediaType;

  /// Creates a new [LabelingJobImagePropertiesResponse].
  /// [annotationType] Annotation type of image labeling job.
  /// [mediaType] Media type of data asset.
  LabelingJobImagePropertiesResponse({
    this.annotationType,
    required this.mediaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': ?annotationType,
      'mediaType': mediaType,
    };
  }

  factory LabelingJobImagePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LabelingJobImagePropertiesResponse(
      annotationType: map['annotationType'] == null ? null : (map['annotationType']! as String).input(),
      mediaType: (map['mediaType'] as String).input(),
    );
  }
}

