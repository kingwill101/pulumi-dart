/// Specifies the type of the proximity placement group. Possible values are: **Standard** : Co-locate resources within an Azure region or Availability Zone. **Ultra** : For future use.
enum ProximityPlacementGroupType {
  standard("Standard"),
  ultra("Ultra");

  const ProximityPlacementGroupType(this.wireValue);
  final String wireValue;

  static ProximityPlacementGroupType fromValue(String value) {
    for (final item in ProximityPlacementGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProximityPlacementGroupType value: $value');
  }
}

