/// Controls certain runtime behaviors of the streaming job.
enum CompatibilityLevel {
  value10("1.0"),
  value12("1.2");

  const CompatibilityLevel(this.value);
  final String value;

  static CompatibilityLevel fromValue(String value) {
    for (final item in CompatibilityLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompatibilityLevel value: $value');
  }
}

