// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a labeling job for text data
class LabelingJobTextProperties {
  /// Annotation type of text labeling job.
  final String? annotationType;
  /// Media type of data asset.
  /// Expected value is 'Text'.
  final String mediaType;

  /// Creates a new [LabelingJobTextProperties].
  /// [annotationType] Annotation type of text labeling job.
  /// [mediaType] Media type of data asset.
  LabelingJobTextProperties({
    this.annotationType,
    required this.mediaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': ?annotationType,
      'mediaType': mediaType,
    };
  }

  factory LabelingJobTextProperties.fromMap(Map<String, dynamic> map) {
    return LabelingJobTextProperties(
      annotationType: map['annotationType'] == null ? null : map['annotationType'] as String,
      mediaType: map['mediaType'] as String,
    );
  }
}

