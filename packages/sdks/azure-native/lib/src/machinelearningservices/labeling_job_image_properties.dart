// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a labeling job for image data
class LabelingJobImageProperties {
  /// Annotation type of image labeling job.
  final pulumi.Input<dynamic>? annotationType;
  /// Media type of data asset.
  /// Expected value is 'Image'.
  final pulumi.Input<String> mediaType;

  /// Creates a new [LabelingJobImageProperties].
  /// [annotationType] Annotation type of image labeling job.
  /// [mediaType] Media type of data asset.
  LabelingJobImageProperties({
    pulumi.Input<dynamic>? annotationType,
    required this.mediaType,
  }) : annotationType = annotationType ?? pulumi.Input.fromValue('Classification');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': ?annotationType,
      'mediaType': mediaType,
    };
  }

  factory LabelingJobImageProperties.fromMap(Map<String, dynamic> map) {
    return LabelingJobImageProperties(
      annotationType: (() { final guardedValue = map['annotationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      mediaType: pulumi.Input.fromValue(map['mediaType'] as String),
    );
  }
}
