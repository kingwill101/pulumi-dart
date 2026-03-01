// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a labeling job for image data
class LabelingJobImageProperties {
  /// Annotation type of image labeling job.
  final String? annotationType;
  /// Media type of data asset.
  /// Expected value is 'Image'.
  final String mediaType;

  /// Creates a new [LabelingJobImageProperties].
  /// [annotationType] Annotation type of image labeling job.
  /// [mediaType] Media type of data asset.
  LabelingJobImageProperties({
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
      annotationType: map['annotationType'] == null ? null : map['annotationType'] as String,
      mediaType: map['mediaType'] as String,
    );
  }
}

