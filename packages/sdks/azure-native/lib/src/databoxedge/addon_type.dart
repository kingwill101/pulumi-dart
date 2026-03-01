/// Addon type.
enum AddonType {
  valueIotEdge("IotEdge"),
  valueArcForKubernetes("ArcForKubernetes");

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

