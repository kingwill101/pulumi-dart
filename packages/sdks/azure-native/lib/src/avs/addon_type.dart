/// Addon type
enum AddonType {
  sRM("SRM"),
  vR("VR"),
  hCX("HCX"),
  arc("Arc");

  const AddonType(this.value);
  final String value;

  static AddonType fromValue(String value) {
    for (final item in AddonType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddonType value: $value');
  }
}

