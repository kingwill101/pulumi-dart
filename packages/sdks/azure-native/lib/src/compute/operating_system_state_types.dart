/// The OS State. For managed images, use Generalized.
enum OperatingSystemStateTypes {
  generalized("Generalized"),
  specialized("Specialized");

  const OperatingSystemStateTypes(this.value);
  final String value;

  static OperatingSystemStateTypes fromValue(String value) {
    for (final item in OperatingSystemStateTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemStateTypes value: $value');
  }
}

