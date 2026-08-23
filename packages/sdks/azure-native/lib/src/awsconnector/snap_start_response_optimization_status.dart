/// When you provide a [qualified Amazon Resource Name (ARN)](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using), this response element indicates whether SnapStart is activated for the specified function version.
enum SnapStartResponseOptimizationStatus {
  off("Off"),
  on("On");

  const SnapStartResponseOptimizationStatus(this.wireValue);
  final String wireValue;

  static SnapStartResponseOptimizationStatus fromValue(String value) {
    for (final item in SnapStartResponseOptimizationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapStartResponseOptimizationStatus value: $value');
  }
}
