/// Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
enum ProximityPlacementGroupType {
  standard("Standard"),
  ultra("Ultra");

  const ProximityPlacementGroupType(this.value);
  final String value;

  static ProximityPlacementGroupType fromValue(String value) {
    for (final item in ProximityPlacementGroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProximityPlacementGroupType value: $value');
  }
}

