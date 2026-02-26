/// The type of placement.
enum PlacementPolicyType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  compact("COMPACT");

  const PlacementPolicyType2(this.value);
  final String value;

  static PlacementPolicyType2 fromValue(String value) {
    for (final item in PlacementPolicyType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyType2 value: $value');
  }
}
