/// The OS State. For managed images, use Generalized.
enum OperatingSystemStateTypes {
  generalized("Generalized"),
  specialized("Specialized");

  const OperatingSystemStateTypes(this.wireValue);
  final String wireValue;

  static OperatingSystemStateTypes fromValue(String value) {
    for (final item in OperatingSystemStateTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatingSystemStateTypes value: $value');
  }
}

