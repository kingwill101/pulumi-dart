/// placement policy affinity type
enum AffinityType {
  affinity("Affinity"),
  antiAffinity("AntiAffinity");

  const AffinityType(this.wireValue);
  final String wireValue;

  static AffinityType fromValue(String value) {
    for (final item in AffinityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AffinityType value: $value');
  }
}
