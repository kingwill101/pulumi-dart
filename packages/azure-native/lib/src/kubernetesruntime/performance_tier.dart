/// Performance tier
enum PerformanceTier {
  undefined("Undefined"),
  basic("Basic"),
  standard("Standard"),
  premium("Premium"),
  ultra("Ultra");

  const PerformanceTier(this.value);
  final String value;

  static PerformanceTier fromValue(String value) {
    for (final item in PerformanceTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PerformanceTier value: $value');
  }
}

