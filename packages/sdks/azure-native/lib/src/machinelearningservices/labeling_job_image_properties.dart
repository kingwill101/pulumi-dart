// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a labeling job for image data
class LabelingJobImageProperties {
  /// Annotation type of image labeling job.
  final pulumi.Input<String>? annotationType;
  /// Media type of data asset.
  /// Expected value is 'Image'.
  final pulumi.Input<String> mediaType;

  /// Creates a new [LabelingJobImageProperties].
  /// [annotationType] Annotation type of image labeling job.
  /// [mediaType] Media type of data asset.
  const LabelingJobImageProperties({
    this.annotationType,
    required this.mediaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': ?annotationType,
      'mediaType': mediaType,
    };
  }

  factory LabelingJobImageProperties.fromMap(Map<String, dynamic> map) {
    return LabelingJobImageProperties(
      annotationType: (() { final guardedValue = map['annotationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mediaType: pulumi.Input.fromValue(map['mediaType'] as String),
    );
  }
}
