/// Annotation type of text labeling job.
enum TextAnnotationType {
  valueClassification("Classification"),
  valueNamedEntityRecognition("NamedEntityRecognition");

  const TextAnnotationType(this.value);
  final String value;

  static TextAnnotationType fromValue(String value) {
    for (final item in TextAnnotationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextAnnotationType value: $value');
  }
}

