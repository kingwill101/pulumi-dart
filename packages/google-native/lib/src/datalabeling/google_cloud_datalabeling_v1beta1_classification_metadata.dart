// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for classification annotations.
class GoogleCloudDatalabelingV1beta1ClassificationMetadata {
  /// Whether the classification task is multi-label or not.
  final bool? isMultiLabel;

  /// Creates a new [GoogleCloudDatalabelingV1beta1ClassificationMetadata].
  /// [isMultiLabel] Whether the classification task is multi-label or not.
  GoogleCloudDatalabelingV1beta1ClassificationMetadata({this.isMultiLabel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isMultiLabel': ?isMultiLabel};
  }

  factory GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1ClassificationMetadata(
      isMultiLabel: map['isMultiLabel'] == null
          ? null
          : map['isMultiLabel'] as bool,
    );
  }
}
