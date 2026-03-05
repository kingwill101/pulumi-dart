/// Different External storage skus.
enum ExternalStorageType {
  unknown("Unknown"),
  none("None"),
  anfStandard("AnfStandard"),
  anfPremium("AnfPremium"),
  anfUltra("AnfUltra");

  const ExternalStorageType(this.wireValue);
  final String wireValue;

  static ExternalStorageType fromValue(String value) {
    for (final item in ExternalStorageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalStorageType value: $value');
  }
}

