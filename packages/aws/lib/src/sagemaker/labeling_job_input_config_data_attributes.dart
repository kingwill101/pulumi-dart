// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobInputConfigDataAttributes {
  /// Declares that your content is free of personally identifiable information or adult content. Valid values: `FreeOfPersonallyIdentifiableInformation`, `FreeOfAdultContent`.
  final List<String>? contentClassifiers;

  /// Creates a new [LabelingJobInputConfigDataAttributes].
  /// [contentClassifiers] Declares that your content is free of personally identifiable information or adult content. Valid values: `FreeOfPersonallyIdentifiableInformation`, `FreeOfAdultContent`.
  LabelingJobInputConfigDataAttributes({
    this.contentClassifiers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentClassifiersValue = contentClassifiers;
    if (contentClassifiersValue != null) {
      map['contentClassifiers'] = contentClassifiersValue;
    }
    return map;
  }

  factory LabelingJobInputConfigDataAttributes.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobInputConfigDataAttributes(
      contentClassifiers: map['contentClassifiers'] == null
          ? null
          : (map['contentClassifiers'] as List).cast<String>(),
    );
  }
}
