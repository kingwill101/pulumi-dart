import 'package:pulumi/pulumi.dart' as pulumi;

/// Primary metrics for InstanceSegmentation tasks.
enum InstanceSegmentationPrimaryMetrics implements pulumi.PulumiEnum<String> {
  meanAveragePrecision("MeanAveragePrecision");

  const InstanceSegmentationPrimaryMetrics(this.wireValue);
  @override
  final String wireValue;

  static InstanceSegmentationPrimaryMetrics fromValue(String value) {
    for (final item in InstanceSegmentationPrimaryMetrics.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSegmentationPrimaryMetrics value: $value');
  }
}
