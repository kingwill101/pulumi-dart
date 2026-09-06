import 'package:pulumi/pulumi.dart' as pulumi;

/// Metric computation method to use for validation metrics in image tasks.
enum ValidationMetricType implements pulumi.PulumiEnum<String> {
  none("None"),
  coco("Coco"),
  voc("Voc"),
  cocoVoc("CocoVoc");

  const ValidationMetricType(this.wireValue);
  @override
  final String wireValue;

  static ValidationMetricType fromValue(String value) {
    for (final item in ValidationMetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationMetricType value: $value');
  }
}
