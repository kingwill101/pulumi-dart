/// placement policy affinity type
enum AffinityType {
  affinity("Affinity"),
  antiAffinity("AntiAffinity");

  const AffinityType(this.value);
  final String value;

  static AffinityType fromValue(String value) {
    for (final item in AffinityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AffinityType value: $value');
  }
}

