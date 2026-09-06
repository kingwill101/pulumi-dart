import 'package:pulumi/pulumi.dart' as pulumi;

/// Performance tier
enum PerformanceTier implements pulumi.PulumiEnum<String> {
  undefined("Undefined"),
  basic("Basic"),
  standard("Standard"),
  premium("Premium"),
  ultra("Ultra");

  const PerformanceTier(this.wireValue);
  @override
  final String wireValue;

  static PerformanceTier fromValue(String value) {
    for (final item in PerformanceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PerformanceTier value: $value');
  }
}
