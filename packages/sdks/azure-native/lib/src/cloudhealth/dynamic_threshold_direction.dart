import 'package:pulumi/pulumi.dart' as pulumi;

/// Threshold direction
enum DynamicThresholdDirection implements pulumi.PulumiEnum<String> {
  lowerThan("LowerThan"),
  greaterThan("GreaterThan"),
  greaterOrLowerThan("GreaterOrLowerThan");

  const DynamicThresholdDirection(this.wireValue);
  @override
  final String wireValue;

  static DynamicThresholdDirection fromValue(String value) {
    for (final item in DynamicThresholdDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DynamicThresholdDirection value: $value');
  }
}
