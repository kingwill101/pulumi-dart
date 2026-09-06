import 'package:pulumi/pulumi.dart' as pulumi;

/// Annotation type of image labeling job.
enum ImageAnnotationType implements pulumi.PulumiEnum<String> {
  valueClassification("Classification"),
  valueBoundingBox("BoundingBox"),
  valueInstanceSegmentation("InstanceSegmentation");

  const ImageAnnotationType(this.wireValue);
  @override
  final String wireValue;

  static ImageAnnotationType fromValue(String value) {
    for (final item in ImageAnnotationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageAnnotationType value: $value');
  }
}
