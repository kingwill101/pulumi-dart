/// Annotation type of image labeling job.
enum ImageAnnotationType {
  valueClassification("Classification"),
  valueBoundingBox("BoundingBox"),
  valueInstanceSegmentation("InstanceSegmentation");

  const ImageAnnotationType(this.value);
  final String value;

  static ImageAnnotationType fromValue(String value) {
    for (final item in ImageAnnotationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageAnnotationType value: $value');
  }
}

