/// Addon type.
enum AddonType {
  valueIotEdge("IotEdge"),
  valueArcForKubernetes("ArcForKubernetes");

  const AddonType(this.wireValue);
  final String wireValue;

  static AddonType fromValue(String value) {
    for (final item in AddonType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddonType value: $value');
  }
}
