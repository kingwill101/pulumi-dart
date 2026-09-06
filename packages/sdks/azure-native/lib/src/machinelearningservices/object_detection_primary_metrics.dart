import 'package:pulumi/pulumi.dart' as pulumi;

/// Primary metrics for Image ObjectDetection task.
enum ObjectDetectionPrimaryMetrics implements pulumi.PulumiEnum<String> {
  meanAveragePrecision("MeanAveragePrecision");

  const ObjectDetectionPrimaryMetrics(this.wireValue);
  @override
  final String wireValue;

  static ObjectDetectionPrimaryMetrics fromValue(String value) {
    for (final item in ObjectDetectionPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ObjectDetectionPrimaryMetrics value: $value');
  }
}
