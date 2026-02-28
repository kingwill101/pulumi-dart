/// Strategy for distributing VMs across zones in a region.
enum LocationPolicyTargetShape {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED");

  const LocationPolicyTargetShape(this.value);
  final String value;

  static LocationPolicyTargetShape fromValue(String value) {
    for (final item in LocationPolicyTargetShape.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocationPolicyTargetShape value: $value');
  }
}
