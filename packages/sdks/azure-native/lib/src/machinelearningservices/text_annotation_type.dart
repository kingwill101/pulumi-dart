import 'package:pulumi/pulumi.dart' as pulumi;

/// Annotation type of text labeling job.
enum TextAnnotationType implements pulumi.PulumiEnum<String> {
  valueClassification("Classification"),
  valueNamedEntityRecognition("NamedEntityRecognition");

  const TextAnnotationType(this.wireValue);
  @override
  final String wireValue;

  static TextAnnotationType fromValue(String value) {
    for (final item in TextAnnotationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextAnnotationType value: $value');
  }
}
